// Generated by gencpp from file realsense_ros_person/LoadRecognitionDBResponse.msg
// DO NOT EDIT!


#ifndef REALSENSE_ROS_PERSON_MESSAGE_LOADRECOGNITIONDBRESPONSE_H
#define REALSENSE_ROS_PERSON_MESSAGE_LOADRECOGNITIONDBRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace realsense_ros_person
{
template <class ContainerAllocator>
struct LoadRecognitionDBResponse_
{
  typedef LoadRecognitionDBResponse_<ContainerAllocator> Type;

  LoadRecognitionDBResponse_()
    : status(false)  {
    }
  LoadRecognitionDBResponse_(const ContainerAllocator& _alloc)
    : status(false)  {
  (void)_alloc;
    }



   typedef uint8_t _status_type;
  _status_type status;





  typedef boost::shared_ptr< ::realsense_ros_person::LoadRecognitionDBResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::realsense_ros_person::LoadRecognitionDBResponse_<ContainerAllocator> const> ConstPtr;

}; // struct LoadRecognitionDBResponse_

typedef ::realsense_ros_person::LoadRecognitionDBResponse_<std::allocator<void> > LoadRecognitionDBResponse;

typedef boost::shared_ptr< ::realsense_ros_person::LoadRecognitionDBResponse > LoadRecognitionDBResponsePtr;
typedef boost::shared_ptr< ::realsense_ros_person::LoadRecognitionDBResponse const> LoadRecognitionDBResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::realsense_ros_person::LoadRecognitionDBResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::realsense_ros_person::LoadRecognitionDBResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace realsense_ros_person

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'realsense_ros_person': ['/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_person/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::realsense_ros_person::LoadRecognitionDBResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::realsense_ros_person::LoadRecognitionDBResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::realsense_ros_person::LoadRecognitionDBResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::realsense_ros_person::LoadRecognitionDBResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::realsense_ros_person::LoadRecognitionDBResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::realsense_ros_person::LoadRecognitionDBResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::realsense_ros_person::LoadRecognitionDBResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3a1255d4d998bd4d6585c64639b5ee9a";
  }

  static const char* value(const ::realsense_ros_person::LoadRecognitionDBResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3a1255d4d998bd4dULL;
  static const uint64_t static_value2 = 0x6585c64639b5ee9aULL;
};

template<class ContainerAllocator>
struct DataType< ::realsense_ros_person::LoadRecognitionDBResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "realsense_ros_person/LoadRecognitionDBResponse";
  }

  static const char* value(const ::realsense_ros_person::LoadRecognitionDBResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::realsense_ros_person::LoadRecognitionDBResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool status\n\
\n\
";
  }

  static const char* value(const ::realsense_ros_person::LoadRecognitionDBResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::realsense_ros_person::LoadRecognitionDBResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LoadRecognitionDBResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::realsense_ros_person::LoadRecognitionDBResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::realsense_ros_person::LoadRecognitionDBResponse_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // REALSENSE_ROS_PERSON_MESSAGE_LOADRECOGNITIONDBRESPONSE_H