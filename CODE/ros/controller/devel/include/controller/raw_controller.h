// Generated by gencpp from file controller/raw_controller.msg
// DO NOT EDIT!


#ifndef CONTROLLER_MESSAGE_RAW_CONTROLLER_H
#define CONTROLLER_MESSAGE_RAW_CONTROLLER_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace controller
{
template <class ContainerAllocator>
struct raw_controller_
{
  typedef raw_controller_<ContainerAllocator> Type;

  raw_controller_()
    : RX(0)
    , RY(0)
    , LX(0)
    , LY(0)  {
    }
  raw_controller_(const ContainerAllocator& _alloc)
    : RX(0)
    , RY(0)
    , LX(0)
    , LY(0)  {
  (void)_alloc;
    }



   typedef int32_t _RX_type;
  _RX_type RX;

   typedef int32_t _RY_type;
  _RY_type RY;

   typedef int32_t _LX_type;
  _LX_type LX;

   typedef int32_t _LY_type;
  _LY_type LY;





  typedef boost::shared_ptr< ::controller::raw_controller_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::controller::raw_controller_<ContainerAllocator> const> ConstPtr;

}; // struct raw_controller_

typedef ::controller::raw_controller_<std::allocator<void> > raw_controller;

typedef boost::shared_ptr< ::controller::raw_controller > raw_controllerPtr;
typedef boost::shared_ptr< ::controller::raw_controller const> raw_controllerConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::controller::raw_controller_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::controller::raw_controller_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace controller

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'controller': ['/home/complubot/Documents/POLLOTRON/CODE/ros/controller/src/controller/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::controller::raw_controller_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::controller::raw_controller_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::controller::raw_controller_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::controller::raw_controller_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::controller::raw_controller_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::controller::raw_controller_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::controller::raw_controller_<ContainerAllocator> >
{
  static const char* value()
  {
    return "28b3e8ea28833e842fbdd2e937cb7542";
  }

  static const char* value(const ::controller::raw_controller_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x28b3e8ea28833e84ULL;
  static const uint64_t static_value2 = 0x2fbdd2e937cb7542ULL;
};

template<class ContainerAllocator>
struct DataType< ::controller::raw_controller_<ContainerAllocator> >
{
  static const char* value()
  {
    return "controller/raw_controller";
  }

  static const char* value(const ::controller::raw_controller_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::controller::raw_controller_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 RX\n\
int32 RY\n\
int32 LX\n\
int32 LY\n\
";
  }

  static const char* value(const ::controller::raw_controller_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::controller::raw_controller_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.RX);
      stream.next(m.RY);
      stream.next(m.LX);
      stream.next(m.LY);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct raw_controller_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::controller::raw_controller_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::controller::raw_controller_<ContainerAllocator>& v)
  {
    s << indent << "RX: ";
    Printer<int32_t>::stream(s, indent + "  ", v.RX);
    s << indent << "RY: ";
    Printer<int32_t>::stream(s, indent + "  ", v.RY);
    s << indent << "LX: ";
    Printer<int32_t>::stream(s, indent + "  ", v.LX);
    s << indent << "LY: ";
    Printer<int32_t>::stream(s, indent + "  ", v.LY);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CONTROLLER_MESSAGE_RAW_CONTROLLER_H
