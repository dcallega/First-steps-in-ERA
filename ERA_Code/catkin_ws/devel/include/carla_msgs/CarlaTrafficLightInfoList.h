// Generated by gencpp from file carla_msgs/CarlaTrafficLightInfoList.msg
// DO NOT EDIT!


#ifndef CARLA_MSGS_MESSAGE_CARLATRAFFICLIGHTINFOLIST_H
#define CARLA_MSGS_MESSAGE_CARLATRAFFICLIGHTINFOLIST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <carla_msgs/CarlaTrafficLightInfo.h>

namespace carla_msgs
{
template <class ContainerAllocator>
struct CarlaTrafficLightInfoList_
{
  typedef CarlaTrafficLightInfoList_<ContainerAllocator> Type;

  CarlaTrafficLightInfoList_()
    : traffic_lights()  {
    }
  CarlaTrafficLightInfoList_(const ContainerAllocator& _alloc)
    : traffic_lights(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::carla_msgs::CarlaTrafficLightInfo_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::carla_msgs::CarlaTrafficLightInfo_<ContainerAllocator> >::other >  _traffic_lights_type;
  _traffic_lights_type traffic_lights;





  typedef boost::shared_ptr< ::carla_msgs::CarlaTrafficLightInfoList_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::carla_msgs::CarlaTrafficLightInfoList_<ContainerAllocator> const> ConstPtr;

}; // struct CarlaTrafficLightInfoList_

typedef ::carla_msgs::CarlaTrafficLightInfoList_<std::allocator<void> > CarlaTrafficLightInfoList;

typedef boost::shared_ptr< ::carla_msgs::CarlaTrafficLightInfoList > CarlaTrafficLightInfoListPtr;
typedef boost::shared_ptr< ::carla_msgs::CarlaTrafficLightInfoList const> CarlaTrafficLightInfoListConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::carla_msgs::CarlaTrafficLightInfoList_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::carla_msgs::CarlaTrafficLightInfoList_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace carla_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg'], 'carla_msgs': ['/home/hackfest03/ERA/catkin_ws/src/ros-bridge/carla_msgs/msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::carla_msgs::CarlaTrafficLightInfoList_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::carla_msgs::CarlaTrafficLightInfoList_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::carla_msgs::CarlaTrafficLightInfoList_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::carla_msgs::CarlaTrafficLightInfoList_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::carla_msgs::CarlaTrafficLightInfoList_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::carla_msgs::CarlaTrafficLightInfoList_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::carla_msgs::CarlaTrafficLightInfoList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d1e03fe534c61bfaafc4dfce64de368a";
  }

  static const char* value(const ::carla_msgs::CarlaTrafficLightInfoList_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd1e03fe534c61bfaULL;
  static const uint64_t static_value2 = 0xafc4dfce64de368aULL;
};

template<class ContainerAllocator>
struct DataType< ::carla_msgs::CarlaTrafficLightInfoList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "carla_msgs/CarlaTrafficLightInfoList";
  }

  static const char* value(const ::carla_msgs::CarlaTrafficLightInfoList_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::carla_msgs::CarlaTrafficLightInfoList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#\n"
"# Copyright (c) 2020 Intel Corporation.\n"
"#\n"
"# This work is licensed under the terms of the MIT license.\n"
"# For a copy, see <https://opensource.org/licenses/MIT>.\n"
"#\n"
"CarlaTrafficLightInfo[] traffic_lights\n"
"\n"
"================================================================================\n"
"MSG: carla_msgs/CarlaTrafficLightInfo\n"
"#\n"
"# Copyright (c) 2020 Intel Corporation.\n"
"#\n"
"# This work is licensed under the terms of the MIT license.\n"
"# For a copy, see <https://opensource.org/licenses/MIT>.\n"
"#\n"
"uint32 id\n"
"geometry_msgs/Pose transform\n"
"CarlaBoundingBox trigger_volume # position is relative to transform\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: carla_msgs/CarlaBoundingBox\n"
"#\n"
"# Copyright (c) 2020 Intel Corporation.\n"
"#\n"
"# This work is licensed under the terms of the MIT license.\n"
"# For a copy, see <https://opensource.org/licenses/MIT>.\n"
"#\n"
"geometry_msgs/Vector3 center\n"
"\n"
"geometry_msgs/Vector3 size\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::carla_msgs::CarlaTrafficLightInfoList_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::carla_msgs::CarlaTrafficLightInfoList_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.traffic_lights);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CarlaTrafficLightInfoList_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::carla_msgs::CarlaTrafficLightInfoList_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::carla_msgs::CarlaTrafficLightInfoList_<ContainerAllocator>& v)
  {
    s << indent << "traffic_lights[]" << std::endl;
    for (size_t i = 0; i < v.traffic_lights.size(); ++i)
    {
      s << indent << "  traffic_lights[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::carla_msgs::CarlaTrafficLightInfo_<ContainerAllocator> >::stream(s, indent + "    ", v.traffic_lights[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CARLA_MSGS_MESSAGE_CARLATRAFFICLIGHTINFOLIST_H
