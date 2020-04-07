// Generated by gencpp from file carla_msgs/CarlaTrafficLightStatus.msg
// DO NOT EDIT!


#ifndef CARLA_MSGS_MESSAGE_CARLATRAFFICLIGHTSTATUS_H
#define CARLA_MSGS_MESSAGE_CARLATRAFFICLIGHTSTATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace carla_msgs
{
template <class ContainerAllocator>
struct CarlaTrafficLightStatus_
{
  typedef CarlaTrafficLightStatus_<ContainerAllocator> Type;

  CarlaTrafficLightStatus_()
    : id(0)
    , state(0)  {
    }
  CarlaTrafficLightStatus_(const ContainerAllocator& _alloc)
    : id(0)
    , state(0)  {
  (void)_alloc;
    }



   typedef uint32_t _id_type;
  _id_type id;

   typedef uint8_t _state_type;
  _state_type state;



  enum {
    RED = 0u,
    YELLOW = 1u,
    GREEN = 2u,
    OFF = 3u,
    UNKNOWN = 4u,
  };


  typedef boost::shared_ptr< ::carla_msgs::CarlaTrafficLightStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::carla_msgs::CarlaTrafficLightStatus_<ContainerAllocator> const> ConstPtr;

}; // struct CarlaTrafficLightStatus_

typedef ::carla_msgs::CarlaTrafficLightStatus_<std::allocator<void> > CarlaTrafficLightStatus;

typedef boost::shared_ptr< ::carla_msgs::CarlaTrafficLightStatus > CarlaTrafficLightStatusPtr;
typedef boost::shared_ptr< ::carla_msgs::CarlaTrafficLightStatus const> CarlaTrafficLightStatusConstPtr;

// constants requiring out of line definition

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::carla_msgs::CarlaTrafficLightStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::carla_msgs::CarlaTrafficLightStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace carla_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg'], 'carla_msgs': ['/home/hackfest03/ERA/catkin_ws/src/ros-bridge/carla_msgs/msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::carla_msgs::CarlaTrafficLightStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::carla_msgs::CarlaTrafficLightStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::carla_msgs::CarlaTrafficLightStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::carla_msgs::CarlaTrafficLightStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::carla_msgs::CarlaTrafficLightStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::carla_msgs::CarlaTrafficLightStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::carla_msgs::CarlaTrafficLightStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "efe41b78c4438f29488e7ecfe6631a9b";
  }

  static const char* value(const ::carla_msgs::CarlaTrafficLightStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xefe41b78c4438f29ULL;
  static const uint64_t static_value2 = 0x488e7ecfe6631a9bULL;
};

template<class ContainerAllocator>
struct DataType< ::carla_msgs::CarlaTrafficLightStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "carla_msgs/CarlaTrafficLightStatus";
  }

  static const char* value(const ::carla_msgs::CarlaTrafficLightStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::carla_msgs::CarlaTrafficLightStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#\n"
"# Copyright (c) 2020 Intel Corporation.\n"
"#\n"
"# This work is licensed under the terms of the MIT license.\n"
"# For a copy, see <https://opensource.org/licenses/MIT>.\n"
"#\n"
"uint32 id\n"
"\n"
"uint8 RED=0\n"
"uint8 YELLOW=1\n"
"uint8 GREEN=2\n"
"uint8 OFF=3\n"
"uint8 UNKNOWN=4\n"
"\n"
"uint8 state\n"
;
  }

  static const char* value(const ::carla_msgs::CarlaTrafficLightStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::carla_msgs::CarlaTrafficLightStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CarlaTrafficLightStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::carla_msgs::CarlaTrafficLightStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::carla_msgs::CarlaTrafficLightStatus_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.id);
    s << indent << "state: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CARLA_MSGS_MESSAGE_CARLATRAFFICLIGHTSTATUS_H
