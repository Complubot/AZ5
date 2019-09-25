#include "ros/ros.h"
#include "tf/transform_listener.h"
#include "sensor_msgs/LaserScan.h"
#include "sensor_msgs/PointCloud.h"
#include "laser_geometry/laser_geometry.h"

ros::Publisher point_coud_pub;

template <class T>
T map(T x, T in_min, T in_max, T out_min, T out_max) {
  return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
}

void scanCallback (const sensor_msgs::LaserScan::ConstPtr& scan_in){
  static laser_geometry::LaserProjection projector_;
  static tf::TransformListener listener_;
  int length = int ((scan_in->angle_max - scan_in->angle_min)/scan_in->angle_increment);
  
  if(!listener_.waitForTransform(scan_in->header.frame_id,"/base_link",
        scan_in->header.stamp + ros::Duration().fromSec(scan_in->ranges.size()*scan_in->time_increment),
        ros::Duration(1.0))){
    return;
  }
  sensor_msgs::PointCloud cloud;
  projector_.transformLaserScanToPointCloud("/base_link",*scan_in, cloud, listener_);
  point_coud_pub.publish(cloud);
}

int main(int argc, char ** argv) {
  ros::init(argc, argv, "laser_transformer"); //Init ROS
  ros::NodeHandle node;
  ros::Subscriber scan_sub = node.subscribe("/laser_filtered", 100, scanCallback);
  point_coud_pub =  node.advertise<sensor_msgs::PointCloud>("laser_cloud", 20);
  ros::spin(); // Run until interupted 
};