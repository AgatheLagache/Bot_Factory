// Generated by gencpp from file poppy_torso_control/GetEndEffectorPosResponse.msg
// DO NOT EDIT!


#ifndef POPPY_TORSO_CONTROL_MESSAGE_GETENDEFFECTORPOSRESPONSE_H
#define POPPY_TORSO_CONTROL_MESSAGE_GETENDEFFECTORPOSRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace poppy_torso_control
{
template <class ContainerAllocator>
struct GetEndEffectorPosResponse_
{
  typedef GetEndEffectorPosResponse_<ContainerAllocator> Type;

  GetEndEffectorPosResponse_()
    : xyz()  {
    }
  GetEndEffectorPosResponse_(const ContainerAllocator& _alloc)
    : xyz(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _xyz_type;
  _xyz_type xyz;





  typedef boost::shared_ptr< ::poppy_torso_control::GetEndEffectorPosResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::poppy_torso_control::GetEndEffectorPosResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetEndEffectorPosResponse_

typedef ::poppy_torso_control::GetEndEffectorPosResponse_<std::allocator<void> > GetEndEffectorPosResponse;

typedef boost::shared_ptr< ::poppy_torso_control::GetEndEffectorPosResponse > GetEndEffectorPosResponsePtr;
typedef boost::shared_ptr< ::poppy_torso_control::GetEndEffectorPosResponse const> GetEndEffectorPosResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::poppy_torso_control::GetEndEffectorPosResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::poppy_torso_control::GetEndEffectorPosResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::poppy_torso_control::GetEndEffectorPosResponse_<ContainerAllocator1> & lhs, const ::poppy_torso_control::GetEndEffectorPosResponse_<ContainerAllocator2> & rhs)
{
  return lhs.xyz == rhs.xyz;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::poppy_torso_control::GetEndEffectorPosResponse_<ContainerAllocator1> & lhs, const ::poppy_torso_control::GetEndEffectorPosResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace poppy_torso_control

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::poppy_torso_control::GetEndEffectorPosResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::poppy_torso_control::GetEndEffectorPosResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::poppy_torso_control::GetEndEffectorPosResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::poppy_torso_control::GetEndEffectorPosResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::poppy_torso_control::GetEndEffectorPosResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::poppy_torso_control::GetEndEffectorPosResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::poppy_torso_control::GetEndEffectorPosResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d8da117dcfc01d450b7bb05e0bca279a";
  }

  static const char* value(const ::poppy_torso_control::GetEndEffectorPosResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd8da117dcfc01d45ULL;
  static const uint64_t static_value2 = 0x0b7bb05e0bca279aULL;
};

template<class ContainerAllocator>
struct DataType< ::poppy_torso_control::GetEndEffectorPosResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "poppy_torso_control/GetEndEffectorPosResponse";
  }

  static const char* value(const ::poppy_torso_control::GetEndEffectorPosResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::poppy_torso_control::GetEndEffectorPosResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[] xyz\n"
"\n"
;
  }

  static const char* value(const ::poppy_torso_control::GetEndEffectorPosResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::poppy_torso_control::GetEndEffectorPosResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.xyz);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetEndEffectorPosResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::poppy_torso_control::GetEndEffectorPosResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::poppy_torso_control::GetEndEffectorPosResponse_<ContainerAllocator>& v)
  {
    s << indent << "xyz[]" << std::endl;
    for (size_t i = 0; i < v.xyz.size(); ++i)
    {
      s << indent << "  xyz[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.xyz[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // POPPY_TORSO_CONTROL_MESSAGE_GETENDEFFECTORPOSRESPONSE_H
