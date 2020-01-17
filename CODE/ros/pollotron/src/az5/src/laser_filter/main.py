
import rospy
from sensor_msgs.msg import LaserScan
from filters.disperse_filter import DisperseFilter
from math import ceil, atan2, pi

filtered_scan = []

def map (value, in_min, in_max, out_min, out_max):
  return (float(value) - float(in_min)) * (float(out_max) - float(out_min)) / (float(in_max) - float(in_min)) + float(out_min)


def callback_scan(data, pub):
  length = ceil((data.angle_max - data.angle_min)/data.angle_increment)
  mast_angle = atan2(4.2,18.0)
  mast_start_index = int(map(-mast_angle, -pi, pi, length, 0)+length/2) % length
  mast_end_index = int(map(mast_angle, -pi, pi, length, 0)+length/2) % length
  scan = LaserScan()
  scan.header = data.header
  scan.angle_min = -pi+mast_angle
  scan.angle_max = pi-mast_angle
  scan.angle_increment = data.angle_increment
  scan.time_increment = data.time_increment
  scan.scan_time = data.scan_time
  scan.range_min = data.range_min
  scan.range_max = data.range_max
  scan.intensities = data.intensities
  values = []
  filtered_length = ceil((scan.angle_max - scan.angle_min)/scan.angle_increment)

  if len(filtered_scan) < filtered_length:
    for _ in range(filtered_length-len(filtered_scan)):
      filtered_scan.append(DisperseFilter(0,4))

  for i in range(mast_start_index,mast_end_index):
    if data.ranges[i] > scan.range_max:
      filtered_scan[i-mast_start_index].addValue(scan.range_max)
    else:
      filtered_scan[i-mast_start_index].addValue(data.ranges[i])
    values.append(filtered_scan[i-mast_start_index].getValue())
    scan.ranges = values
  pub.publish(scan)

def main():
  rospy.init_node('laser_filter', anonymous=False)
  pub = rospy.Publisher('laser_filtered', LaserScan, queue_size=100)
  rospy.Subscriber('scan', LaserScan, lambda data:callback_scan(data,pub))
  rospy.spin()

if __name__ == '__main__':
    main()
