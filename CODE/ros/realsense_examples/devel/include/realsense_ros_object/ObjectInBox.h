// Generated by gencpp from file realsense_ros_object/ObjectInBox.msg
// DO NOT EDIT!


#ifndef REALSENSE_ROS_OBJECT_MESSAGE_OBJECTINBOX_H
#define REALSENSE_ROS_OBJECT_MESSAGE_OBJECTINBOX_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <realsense_ros_object/Object.h>
#include <realsense_ros_object/Rect.h>
#include <realsense_ros_object/Location3D.h>

namespace realsense_ros_object
{
template <class ContainerAllocator>
struct ObjectInBox_
{
  typedef ObjectInBox_<ContainerAllocator> Type;

  ObjectInBox_()
    : object()
    , object_bbox()
    , location()  {
    }
  ObjectInBox_(const ContainerAllocator& _alloc)
    : object(_alloc)
    , object_bbox(_alloc)
    , location(_alloc)  {
  (void)_alloc;
    }



   typedef  ::realsense_ros_object::Object_<ContainerAllocator>  _object_type;
  _object_type object;

   typedef  ::realsense_ros_object::Rect_<ContainerAllocator>  _object_bbox_type;
  _object_bbox_type object_bbox;

   typedef  ::realsense_ros_object::Location3D_<ContainerAllocator>  _location_type;
  _location_type location;





  typedef boost::shared_ptr< ::realsense_ros_object::ObjectInBox_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::realsense_ros_object::ObjectInBox_<ContainerAllocator> const> ConstPtr;

}; // struct ObjectInBox_

typedef ::realsense_ros_object::ObjectInBox_<std::allocator<void> > ObjectInBox;

typedef boost::shared_ptr< ::realsense_ros_object::ObjectInBox > ObjectInBoxPtr;
typedef boost::shared_ptr< ::realsense_ros_object::ObjectInBox const> ObjectInBoxConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::realsense_ros_object::ObjectInBox_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::realsense_ros_object::ObjectInBox_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace realsense_ros_object

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'realsense_ros_object': ['/home/complubot/Documents/POLLOTRON/CODE/ros/realsense_examples/src/realsense_samples_ros/realsense_ros_object/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::realsense_ros_object::ObjectInBox_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::realsense_ros_object::ObjectInBox_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::realsense_ros_object::ObjectInBox_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::realsense_ros_object::ObjectInBox_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::realsense_ros_object::ObjectInBox_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::realsense_ros_object::ObjectInBox_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::realsense_ros_object::ObjectInBox_<ContainerAllocator> >
{
  static const char* value()
  {
    return "506c556ef4808f18c8fda7a0b6d365a7";
  }

  static const char* value(const ::realsense_ros_object::ObjectInBox_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x506c556ef4808f18ULL;
  static const uint64_t static_value2 = 0xc8fda7a0b6d365a7ULL;
};

template<class ContainerAllocator>
struct DataType< ::realsense_ros_object::ObjectInBox_<ContainerAllocator> >
{
  static const char* value()
  {
    return "realsense_ros_object/ObjectInBox";
  }

  static const char* value(const ::realsense_ros_object::ObjectInBox_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::realsense_ros_object::ObjectInBox_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Object object\n\
Rect object_bbox\n\
Location3D location\n\
\n\
================================================================================\n\
MSG: realsense_ros_object/Object\n\
int32 label\n\
string object_name\n\
float32 probability\n\
\n\
================================================================================\n\
MSG: realsense_ros_object/Rect\n\
int32 x\n\
int32 y\n\
int32 height\n\
int32 width\n\
\n\
================================================================================\n\
MSG: realsense_ros_object/Location3D\n\
geometry_msgs/Point32 coordinates\n\
float32 horiz_margin\n\
float32 vert_margin\n\
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

  static const char* value(const ::realsense_ros_object::ObjectInBox_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::realsense_ros_object::ObjectInBox_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.object);
      stream.next(m.object_bbox);
      stream.next(m.location);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ObjectInBox_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::realsense_ros_object::ObjectInBox_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::realsense_ros_object::ObjectInBox_<ContainerAllocator>& v)
  {
    s << indent << "object: ";
    s << std::endl;
    Printer< ::realsense_ros_object::Object_<ContainerAllocator> >::stream(s, indent + "  ", v.object);
    s << indent << "object_bbox: ";
    s << std::endl;
    Printer< ::realsense_ros_object::Rect_<ContainerAllocator> >::stream(s, indent + "  ", v.object_bbox);
    s << indent << "location: ";
    s << std::endl;
    Printer< ::realsense_ros_object::Location3D_<ContainerAllocator> >::stream(s, indent + "  ", v.location);
  }
};

} // namespace message_operations
} // namespace ros

#endif // REALSENSE_ROS_OBJECT_MESSAGE_OBJECTINBOX_H