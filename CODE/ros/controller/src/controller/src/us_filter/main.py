#!/usr/bin/env python3

import rospy
from controller.msg import ultrasounds, ultrasounds
from us_filter.filter import Filter

pub = None
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


def callback(data, pub):
    max_vel = ultrasounds()
    for i in range(data.length):
        filter[i].addValue(constrain(data.measurements[i], 0, 300))
        max_vel.measurements[i] = filter[i].getValue()
    pub.publish(max_vel)
    

def main():
    rospy.init_node('vector_transformer', anonymous=False)
    pub = rospy.Publisher('max_velocity', ultrasounds, queue_size=10)
    rospy.Subscriber('ultrasounds_raw', ultrasounds, lambda data: callback(data, pub))
    rospy.spin()

if __name__ == '__main__':
    main()