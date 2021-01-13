// Generated by gencpp from file poppy_msgs/SetTorqueMaxRequest.msg
// DO NOT EDIT!


#ifndef POPPY_MSGS_MESSAGE_SETTORQUEMAXREQUEST_H
#define POPPY_MSGS_MESSAGE_SETTORQUEMAXREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace poppy_msgs
{
template <class ContainerAllocator>
struct SetTorqueMaxRequest_
{
  typedef SetTorqueMaxRequest_<ContainerAllocator> Type;

  SetTorqueMaxRequest_()
    : joint_names()
    , max_torques()  {
    }
  SetTorqueMaxRequest_(const ContainerAllocator& _alloc)
    : joint_names(_alloc)
    , max_torques(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _joint_names_type;
  _joint_names_type joint_names;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _max_torques_type;
  _max_torques_type max_torques;





  typedef boost::shared_ptr< ::poppy_msgs::SetTorqueMaxRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::poppy_msgs::SetTorqueMaxRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetTorqueMaxRequest_

typedef ::poppy_msgs::SetTorqueMaxRequest_<std::allocator<void> > SetTorqueMaxRequest;

typedef boost::shared_ptr< ::poppy_msgs::SetTorqueMaxRequest > SetTorqueMaxRequestPtr;
typedef boost::shared_ptr< ::poppy_msgs::SetTorqueMaxRequest const> SetTorqueMaxRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::poppy_msgs::SetTorqueMaxRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::poppy_msgs::SetTorqueMaxRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::poppy_msgs::SetTorqueMaxRequest_<ContainerAllocator1> & lhs, const ::poppy_msgs::SetTorqueMaxRequest_<ContainerAllocator2> & rhs)
{
  return lhs.joint_names == rhs.joint_names &&
    lhs.max_torques == rhs.max_torques;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::poppy_msgs::SetTorqueMaxRequest_<ContainerAllocator1> & lhs, const ::poppy_msgs::SetTorqueMaxRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace poppy_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::poppy_msgs::SetTorqueMaxRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::poppy_msgs::SetTorqueMaxRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::poppy_msgs::SetTorqueMaxRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::poppy_msgs::SetTorqueMaxRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::poppy_msgs::SetTorqueMaxRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::poppy_msgs::SetTorqueMaxRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::poppy_msgs::SetTorqueMaxRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "38f0e745a4598ee480032418e4d9c65f";
  }

  static const char* value(const ::poppy_msgs::SetTorqueMaxRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x38f0e745a4598ee4ULL;
  static const uint64_t static_value2 = 0x80032418e4d9c65fULL;
};

template<class ContainerAllocator>
struct DataType< ::poppy_msgs::SetTorqueMaxRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "poppy_msgs/SetTorqueMaxRequest";
  }

  static const char* value(const ::poppy_msgs::SetTorqueMaxRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::poppy_msgs::SetTorqueMaxRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string[] joint_names\n"
"float32[] max_torques\n"
;
  }

  static const char* value(const ::poppy_msgs::SetTorqueMaxRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::poppy_msgs::SetTorqueMaxRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.joint_names);
      stream.next(m.max_torques);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetTorqueMaxRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::poppy_msgs::SetTorqueMaxRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::poppy_msgs::SetTorqueMaxRequest_<ContainerAllocator>& v)
  {
    s << indent << "joint_names[]" << std::endl;
    for (size_t i = 0; i < v.joint_names.size(); ++i)
    {
      s << indent << "  joint_names[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.joint_names[i]);
    }
    s << indent << "max_torques[]" << std::endl;
    for (size_t i = 0; i < v.max_torques.size(); ++i)
    {
      s << indent << "  max_torques[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.max_torques[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // POPPY_MSGS_MESSAGE_SETTORQUEMAXREQUEST_H
