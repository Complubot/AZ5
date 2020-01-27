#!/usr/bin/env python3

import rospy
from geometry_msgs.msg import Twist
import sys
sys.path.remove('/opt/ros/kinetic/lib/python2.7/dist-packages')
import pyrealsense2 as rs
import numpy as np
import cv2
import subprocess
import time
import os
import math
from fast_yolo import FastYolo
from yolo import Yolo
from faces import Faces
from movement_manager import MovementManager
from markov_filter import MarkovFilter
from color_matcher import ColorMatcher


def main():
  draw = True
  resize_factor = 0.5

  #Create frame captures and configure image size
  pipeline = rs.pipeline()
  pipeline.start()
  cv2.waitKey(200)
  frame = np.asanyarray(pipeline.wait_for_frames().get_color_frame().get_data())
  frame = cv2.cvtColor(frame, cv2.COLOR_RGB2BGR)
  height, width = frame.shape[:2]
  height = int(height*resize_factor)
  width = int(width*resize_factor)
  center_x = width/2
  center_y = height/2
  dim_x = int(width*0.2)
  dim_y = int(height*0.48)

  def capture_image ():
    frame = np.asanyarray(pipeline.wait_for_frames().get_color_frame().get_data())
    frame = cv2.resize(frame, (width, height))
    frame = cv2.cvtColor(frame, cv2.COLOR_RGB2BGR)
    return frame

  def init(image):
    #Elements to create
    yolo = FastYolo((height, width), 4)
    movement = MovementManager()
    faces = Faces()
    m = MarkovFilter(width)

    #Create a new full yolo for better recognition
    init_yolo = Yolo((dim_y*2, dim_x*2), tiny = False)
    color_matcher = ColorMatcher()

    #Display image and wait to let user position
    cv2.imshow('image', image)
    cv2.waitKey(2000)
    count = 0
    while count < 3:
      frame = capture_image ()
      frame = frame[int(center_y-dim_y):int(center_y+dim_y), int(center_x-dim_x):int(center_x+dim_x)]
      cv2.imshow('image', frame)
      #Learn faces and color
      faces.load_face(frame)
      locations = faces.get_faces(frame)
      match = faces.detect_face(frame, locations)
      boxes, in_distances, confidences, classids = init_yolo.infer_image(frame)
      if len(boxes)>0:
        for box in boxes:
          color_matcher.add_color(frame, box)
        init_yolo.set_color_matcher(color_matcher)

        #Show learning progress
        frame = init_yolo.draw(frame, boxes, in_distances, confidences, classids)
        frame = faces.draw(frame, locations, match)
        cv2.imshow('image', frame)
        cv2.waitKey(1)
        count += 1

    #Return loaded elements
    yolo.set_color_matcher(color_matcher)
    return yolo, movement, faces, m

  #-------------------------------INIT_MAIN-------------------------------
  rospy.init_node('person_tracker', anonymous=False)
  pub = rospy.Publisher('target_vel', Twist, queue_size=10)
  frame = capture_image()
  yolo, movement, faces, m = init(frame)

  update_rate = 2
  update_state = 0
  target_hits = update_rate
  hits = 0
  stop = False
  while(True):
    start = time.time()
    frame = capture_image()

    #Get Person boxes
    boxes, in_distances, confidences, classids = yolo.infer_image(frame)
    for box, in_distance in zip(boxes, in_distances):
      if in_distance:
        m.add_box(box, 2.5)
        hits += 1
      movement.add_box(frame, box)
      m.add_box(box, 0.4)
    
    #Get Person faces
    locations = faces.get_faces(frame)
    face_landmarks_list = faces.get_landmarks(frame)
    for location in locations:
      movement.add_face(frame, location)
      m.add_face(location, 0.4)
    
    #Match faces with target
    match = faces.detect_face(frame, locations)
    m.add_face(match, 2)
    if match:
      hits += 1

    #Calculate movement between frames for each previous box
    movements = movement.get_movement(frame)
    for move in movements:
      if move.movement != 0:
        pass
        #m.add_movement(move.get_box())

    #Update filter
    m.update_filter()
    max_x = m.get_max()

    #Draw images
    if draw:
      m.draw()
      frame = faces.draw(frame,locations, match)
      frame = faces.draw_landmarks(frame, face_landmarks_list)
      frame = yolo.draw(frame, boxes, in_distances, confidences, classids)
      for move in movements:
        frame = move.draw(frame)
      cv2.line(frame, (max_x,0), (max_x,height), (255, 0, 255), 2, lineType=cv2.LINE_AA)
      cv2.imshow('image', frame)

    if update_state >= update_rate:
      stop = hits < target_hits
      update_state = 0
      hits = 0
    else:
      update_state += 1

    #SEND W TO ROS
    msg = Twist()
    msg.linear.y = 0
    msg.linear.z = 0
    msg.angular.x = 0
    msg.angular.y = 0
    if stop:
      msg.linear.x = 0
      msg.angular.z = 0
    else:
      msg.linear.x = 0.9
      msg.angular.z = -((max_x - width/2)/width)*0.7
    pub.publish(msg)

    end = time.time()
    #print ("Elapsed: {:6f} seconds".format(end - start))
    key = cv2.waitKey(2)
    if key==ord('q'):
      break
    elif key==ord('r'):
      frame = capture_image()
      yolo, movement, faces, m = init(frame)

  pipeline.stop()
  cv2.destroyAllWindows()

if __name__ == '__main__':
  main()
