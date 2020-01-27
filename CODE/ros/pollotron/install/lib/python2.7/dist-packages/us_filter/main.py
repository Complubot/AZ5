#!/usr/bin/env python3

import rospy
import time
from math import pi
from az5.msg import ultrasounds
from filters.disperse_filter import DisperseFilter
from sensor_msgs.msg import Range

filter_active = True
filter = []

for _ in range(ultrasounds().length):
    filter.append(DisperseFilter(0, 4))

def constrain(value, min, max):
    if value > max:
        return max
    elif value < min:
        return min
    else:
        return value

def map(x, in_min, in_max, out_min, out_max):
    return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min


def callback(data, pub):
    if data.value > 1:
        sonar = Range() 
        sonar.min_range = 0
        sonar.max_range = 3.01
        sonar.field_of_view = pi/6
        sonar.radiation_type = sonar.ULTRASOUND
        sonar.header.stamp = rospy.Time.now()
        sonar.header.frame_id = 'sonar_sensor_'+str(data.us+1)
        if filter_active:
            filter[data.us].addValue(constrain(data.value, 1, 300))
            sonar.range = filter[data.us].getValue()/100
        else:    
            sonar.range = data.value/100
        pub.publish(sonar)

def main():
    rospy.init_node('vector_transformer', anonymous=False)
    pub = rospy.Publisher('ultrasounds_filtered', Range, queue_size=100)
    rospy.Subscriber('ultrasounds_raw', ultrasounds, lambda data: callback(data,pub))
    rospy.spin()

if __name__ == '__main__':
    main()