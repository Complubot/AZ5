#!/usr/bin/env python3
import rospy
from controller.msg import buttons
from pydub import AudioSegment
from pydub.playback import play

songs = ['r2d21.mp3','r2d22.mp3','r2d23.mp3','r2d24.mp3','r2d25.mp3', 'hola.mp3']

def playSong(song):
    if song > 0 and song < len(songs):
        sound = AudioSegment.from_file('/home/complubot/Documents/POLLOTRON/MEDIA/sounds/'+songs[song], format="mp3")
        play(sound)

def callback (data):
    if data.TRIANGLE:
        playSong(0)
    elif data.CIRCLE:
        playSong(1)
    elif data.SQUARE:
        playSong(2)
    elif data.CROSS:
        playSong(3)
    elif data.DOWN:
        playSong(4)
    elif data.UP:
        playSong(5)

def main ():
    rospy.init_node('sounds')
    rospy.Subscriber('buttons', buttons, callback)
    rospy.spin()