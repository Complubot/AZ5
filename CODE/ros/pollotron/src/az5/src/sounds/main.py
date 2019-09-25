#!/usr/bin/env python3
import rospy
from sensor_msgs.msg import Joy
from pydub import AudioSegment
from pydub.playback import play

songs = ['r2d21.mp3','r2d22.mp3','r2d23.mp3','r2d24.mp3','r2d25.mp3', 'hola.mp3']

def playSong(song):
    if song > 0 and song < len(songs):
        sound = AudioSegment.from_file('/home/complubot/Documents/POLLOTRON/MEDIA/sounds/'+songs[song], format="mp3")
        play(sound)

def callback (data):
    if data.buttons[3]:
        playSong(0)
    elif data.buttons[2]:
        playSong(1)
    elif data.buttons[1]:
        playSong(2)
    elif data.buttons[0]:
        playSong(3)
    elif data.buttons[7]:
        playSong(4)
    elif data.buttons[6]:
        playSong(5)

def main ():
    rospy.init_node('sounds')
    rospy.Subscriber('raw_controller_msg', Joy, callback)
    rospy.spin()