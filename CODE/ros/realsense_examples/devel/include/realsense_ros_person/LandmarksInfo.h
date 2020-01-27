// Generated by gencpp from file realsense_ros_person/LandmarksInfo.msg
// DO NOT EDIT!


#ifndef REALSENSE_ROS_PERSON_MESSAGE_LANDMARKSINFO_H
#define REALSENSE_ROS_PERSON_MESSAGE_LANDMARKSINFO_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <realsense_ros_person/Landmark.h>

namespace realsense_ros_person
{
template <class ContainerAllocator>
struct LandmarksInfo_
{
  typedef LandmarksInfo_<ContainerAllocator> Type;

  LandmarksInfo_()
    : confidence(0)
    , landmarks()  {
    }
  LandmarksInfo_(const ContainerAllocator& _alloc)
    : confidence(0)
    , landmarks(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _confidence_type;
  _confidence_type confidence;

   typedef std::vector< ::realsense_ros_person::Landmark_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::realsense_ros_person::Landmark_<ContainerAllocator> >::other >  _landmarks_type;
  _landmarks_type landmarks;





  typedef boost::shared_ptr< ::realsense_ros_person::LandmarksInfo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::realsense_ros_person::LandmarksInfo_<ContainerAllocator> const> ConstPtr;

}; // struct LandmarksInfo_

typedef ::realsense_ros_person::LandmarksInfo_<std::allocator<void> > LandmarksInfo;

typedef boost::shared_ptr< ::realsense_ros_person::LandmarksInfo > LandmarksInfoPtr;
typedef boost::shared_ptr< ::realsense_ros_person::LandmarksInfo const> LandmarksInfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::realsense_ros_person::LandmarksInfo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::realsense_ros_person::LandmarksInfo_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace realsense_ros_person

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'realsense_ros_person': ['/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::realsense_ros_person::LandmarksInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::realsense_ros_person::LandmarksInfo_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::realsense_ros_person::LandmarksInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::realsense_ros_person::LandmarksInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::realsense_ros_person::LandmarksInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::realsense_ros_person::LandmarksInfo_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::realsense_ros_person::LandmarksInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b88fb5d4a75fae4bfffdb6477b2b15a7";
  }

  static const char* value(const ::realsense_ros_person::LandmarksInfo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb88fb5d4a75fae4bULL;
  static const uint64_t static_value2 = 0xfffdb6477b2b15a7ULL;
};

template<class ContainerAllocator>
struct DataType< ::realsense_ros_person::LandmarksInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "realsense_ros_person/LandmarksInfo";
  }

  static const char* value(const ::realsense_ros_person::LandmarksInfo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::realsense_ros_person::LandmarksInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 confidence\n\
Landmark[] landmarks\n\
\n\
================================================================================\n\
MSG: realsense_ros_person/Landmark\n\
geometry_msgs/Point location\n\
geometry_msgs/Point32 realWorldCoordinates\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point32\n\
# This contains the position of a point in free space(with 32 bits of precision).\n\
# It is recommeded to use Point wherever possible instead of Point32.  \n\
# \n\
# This recommendation is to promote interoperability.  \n\
#\n\
# This message is designed to take up less space when sending\n\
# lots of points at once, as in the case of a PointCloud.  \n\
\n\
float32 x\n\
float32 y\n\
float32 z\n\
";
  }

  static const char* value(const ::realsense_ros_person::LandmarksInfo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::realsense_ros_person::LandmarksInfo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.confidence);
      stream.next(m.landmarks);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LandmarksInfo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::realsense_ros_person::LandmarksInfo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::realsense_ros_person::LandmarksInfo_<ContainerAllocator>& v)
  {
    s << indent << "confidence: ";
    Printer<int32_t>::stream(s, indent + "  ", v.confidence);
    s << indent << "landmarks[]" << std::endl;
    for (size_t i = 0; i < v.landmarks.size(); ++i)
    {
      s << indent << "  landmarks[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::realsense_ros_person::Landmark_<ContainerAllocator> >::stream(s, indent + "    ", v.landmarks[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // REALSENSE_ROS_PERSON_MESSAGE_LANDMARKSINFO_H