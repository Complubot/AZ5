#include "ros/ros.h"
#include "sensor_msgs/PointCloud.h"
#include "geometry_msgs/PointStamped.h"
#include "geometry_msgs/Point.h"
#include "geometry_msgs/Point32.h"
#include "geometry_msgs/PolygonStamped.h"
#include "geometry_msgs/Polygon.h"
#include "geometry_msgs/QuaternionStamped.h"

#include <math.h>
#include <iostream>

ros::Publisher safety_pub;
ros::Publisher safety_area_pub;

sensor_msgs::PointCloud last_point_cloud;
geometry_msgs::QuaternionStamped last_velocity;

template <class T>
T formatAngle(const T angle){
  if (angle < -M_PI){
    return angle + 2*M_PI;
  }else if (angle > M_PI){
    return angle - 2*M_PI;
  }else{
    return angle;
  }
}

template <class T>
T euclideanDistance(const T x, const T y){
  return sqrt(pow(x,2) + pow(y,2));
}

template <class T>
bool betweenAngles(const T angle_to_check, const T start_angle, const T end_angle){
  if (end_angle > 0) {
    if (start_angle > 0) {
      return (angle_to_check > start_angle) && (angle_to_check < end_angle);
    }else{
      return (angle_to_check < start_angle) && (angle_to_check > end_angle);
    }
  }else {
    if (start_angle > 0) {
      return (angle_to_check < start_angle) && (angle_to_check > end_angle);
    }else{
      return (angle_to_check > start_angle) && (angle_to_check < end_angle);
    }
  }
}

void safetyDistance() {
  geometry_msgs::PolygonStamped polygon_stamped;
  polygon_stamped.header.stamp = ros::Time::now();
  polygon_stamped.header.frame_id = "base_link";

  geometry_msgs::PointStamped safety_distance;
  geometry_msgs::Point safety_distance_point;
  safety_distance.header.stamp = ros::Time::now();
  safety_distance.header.frame_id = "base_link";

  if ((last_velocity.quaternion.x != 0) || (last_velocity.quaternion.y != 0)){
    const double view_angle = M_PI/3;
    const double facing_angle = atan2(last_velocity.quaternion.x,last_velocity.quaternion.y);
    const double start_angle = formatAngle(facing_angle+view_angle);
    const double end_angle = formatAngle(facing_angle-view_angle);
    double min_distance = 12;
    double acc_distance = 0; 
    int points_in_range = 0;
    geometry_msgs::Polygon polygon;
    geometry_msgs::Point32 base_link;
    base_link.x = 0;
    base_link.y = 0;
    base_link.z = 0;
    geometry_msgs::Point32 angle_max;
    angle_max.x = cos(start_angle)*min_distance;
    angle_max.y = sin(start_angle)*min_distance;
    angle_max.z = 0;
    geometry_msgs::Point32 angle_min;
    angle_min.x = cos(end_angle)*min_distance;
    angle_min.y = sin(end_angle)*min_distance;
    angle_min.z = 0;
    polygon.points = {base_link, angle_max, angle_min};
    polygon_stamped.polygon = polygon;
    std::cout << start_angle << " : " << facing_angle << " : " << end_angle << std::endl;
    for (const auto &point : last_point_cloud.points) {
      if ((point.x==point.x) && (point.y==point.y)) {
        const double point_angle = atan2(point.y, point.x);
        if (betweenAngles(point_angle, start_angle, end_angle)){
          const double distance = euclideanDistance(point.x, point.y);
          if (distance < min_distance) {
            min_distance = distance;
            safety_distance_point.x = point.x;
            safety_distance_point.y = point.y;
            safety_distance_point.z = 0;
          }
          acc_distance += distance;
          ++points_in_range;
        }
      }
    }
    std::cout <<  atan2(safety_distance_point.y, safety_distance_point.x) << std::endl;
  }else{
    
  }
  safety_distance.point = safety_distance_point;
  safety_pub.publish(safety_distance);
  safety_area_pub.publish(polygon_stamped);
}

void velocityCallback (const geometry_msgs::QuaternionStamped velocity){
  last_velocity = velocity;
  safetyDistance();
}

void scanCallback (const sensor_msgs::PointCloud point_cloud){
  last_point_cloud = point_cloud;
  safetyDistance();
}

int main(int argc, char ** argv) {
  ros::init(argc, argv, "safety_distance"); //Init ROS
  ros::NodeHandle node;
  ros::Subscriber scan_sub = node.subscribe("/laser_cloud", 100, scanCallback);
  ros::Subscriber velocity_sub = node.subscribe("/raw_velocity", 100, velocityCallback);
  safety_pub =  node.advertise<geometry_msgs::PointStamped>("safety_distance", 20);
  safety_area_pub =  node.advertise<geometry_msgs::PolygonStamped>("safety_polygon", 20);
  ros::spin(); // Run until interupted 
};