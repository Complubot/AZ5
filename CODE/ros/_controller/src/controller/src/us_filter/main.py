#!/usr/bin/env python3

import rospy
from math import pi
from controller.msg import ultrasounds
from us_filter.filter import Filter
from sensor_msgs.msg import Range

pub = []
filter = []

for _ in range(ultrasounds().length):
    filter.append(Filter(0, 4))

def constrain(value, min, max):
    if value > max:
        return max
    elif value < min:
        return min
    else:
        return value

def map(x, in_min, in_max, out_min, out_max):
    return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min


def callback(data):
    sonar = Range() 
    sonar.min_range = 0
    sonar.max_range = 3.01
    sonar.field_of_view = pi/6
    sonar.radiation_type = sonar.ULTRASOUND
    sonar.header.stamp = rospy.Time.now()
    for i in range(data.length):
        filter[i].addValue(constrain(data.measurements[i], 1, 300))
        sonar.range = filter[i].getValue()/100
        sonar.header.frame_id = 'sonar_sensor_'+str(i+1)
        pub[i].publish(sonar)
    

def main():
    rospy.init_node('vector_transformer', anonymous=False)
    for i in range(ultrasounds().length):
        pub.append(rospy.Publisher('ultrasounds_filtered_'+str(i+1), Range, queue_size=100))
    rospy.Subscriber('ultrasounds_raw', ultrasounds, callback)
    rospy.spin()

if __name__ == '__main__':
    main()