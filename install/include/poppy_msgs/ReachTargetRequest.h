// Generated by gencpp from file poppy_msgs/ReachTargetRequest.msg
// DO NOT EDIT!


#ifndef POPPY_MSGS_MESSAGE_REACHTARGETREQUEST_H
#define POPPY_MSGS_MESSAGE_REACHTARGETREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <sensor_msgs/JointState.h>

namespace poppy_msgs
{
template <class ContainerAllocator>
struct ReachTargetRequest_
{
  typedef ReachTargetRequest_<ContainerAllocator> Type;

  ReachTargetRequest_()
    : target()
    , duration()  {
    }
  ReachTargetRequest_(const ContainerAllocator& _alloc)
    : target(_alloc)
    , duration()  {
  (void)_alloc;
    }



   typedef  ::sensor_msgs::JointState_<ContainerAllocator>  _target_type;
  _target_type target;

   typedef ros::Duration _duration_type;
  _duration_type duration;





  typedef boost::shared_ptr< ::poppy_msgs::ReachTargetRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::poppy_msgs::ReachTargetRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ReachTargetRequest_

typedef ::poppy_msgs::ReachTargetRequest_<std::allocator<void> > ReachTargetRequest;

typedef boost::shared_ptr< ::poppy_msgs::ReachTargetRequest > ReachTargetRequestPtr;
typedef boost::shared_ptr< ::poppy_msgs::ReachTargetRequest const> ReachTargetRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::poppy_msgs::ReachTargetRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::poppy_msgs::ReachTargetRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::poppy_msgs::ReachTargetRequest_<ContainerAllocator1> & lhs, const ::poppy_msgs::ReachTargetRequest_<ContainerAllocator2> & rhs)
{
  return lhs.target == rhs.target &&
    lhs.duration == rhs.duration;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::poppy_msgs::ReachTargetRequest_<ContainerAllocator1> & lhs, const ::poppy_msgs::ReachTargetRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace poppy_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::poppy_msgs::ReachTargetRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::poppy_msgs::ReachTargetRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::poppy_msgs::ReachTargetRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::poppy_msgs::ReachTargetRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::poppy_msgs::ReachTargetRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::poppy_msgs::ReachTargetRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::poppy_msgs::ReachTargetRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "17ad4788f8e48b9ff03f360038e12ec2";
  }

  static const char* value(const ::poppy_msgs::ReachTargetRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x17ad4788f8e48b9fULL;
  static const uint64_t static_value2 = 0xf03f360038e12ec2ULL;
};

template<class ContainerAllocator>
struct DataType< ::poppy_msgs::ReachTargetRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "poppy_msgs/ReachTargetRequest";
  }

  static const char* value(const ::poppy_msgs::ReachTargetRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::poppy_msgs::ReachTargetRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sensor_msgs/JointState target\n"
"duration duration\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/JointState\n"
"# This is a message that holds data to describe the state of a set of torque controlled joints. \n"
"#\n"
"# The state of each joint (revolute or prismatic) is defined by:\n"
"#  * the position of the joint (rad or m),\n"
"#  * the velocity of the joint (rad/s or m/s) and \n"
"#  * the effort that is applied in the joint (Nm or N).\n"
"#\n"
"# Each joint is uniquely identified by its name\n"
"# The header specifies the time at which the joint states were recorded. All the joint states\n"
"# in one message have to be recorded at the same time.\n"
"#\n"
"# This message consists of a multiple arrays, one for each part of the joint state. \n"
"# The goal is to make each of the fields optional. When e.g. your joints have no\n"
"# effort associated with them, you can leave the effort array empty. \n"
"#\n"
"# All arrays in this message should have the same size, or be empty.\n"
"# This is the only way to uniquely associate the joint name with the correct\n"
"# states.\n"
"\n"
"\n"
"Header header\n"
"\n"
"string[] name\n"
"float64[] position\n"
"float64[] velocity\n"
"float64[] effort\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::poppy_msgs::ReachTargetRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::poppy_msgs::ReachTargetRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.target);
      stream.next(m.duration);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ReachTargetRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::poppy_msgs::ReachTargetRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::poppy_msgs::ReachTargetRequest_<ContainerAllocator>& v)
  {
    s << indent << "target: ";
    s << std::endl;
    Printer< ::sensor_msgs::JointState_<ContainerAllocator> >::stream(s, indent + "  ", v.target);
    s << indent << "duration: ";
    Printer<ros::Duration>::stream(s, indent + "  ", v.duration);
  }
};

} // namespace message_operations
} // namespace ros

#endif // POPPY_MSGS_MESSAGE_REACHTARGETREQUEST_H