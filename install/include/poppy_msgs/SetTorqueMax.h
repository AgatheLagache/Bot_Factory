// Generated by gencpp from file poppy_msgs/SetTorqueMax.msg
// DO NOT EDIT!


#ifndef POPPY_MSGS_MESSAGE_SETTORQUEMAX_H
#define POPPY_MSGS_MESSAGE_SETTORQUEMAX_H

#include <ros/service_traits.h>


#include <poppy_msgs/SetTorqueMaxRequest.h>
#include <poppy_msgs/SetTorqueMaxResponse.h>


namespace poppy_msgs
{

struct SetTorqueMax
{

typedef SetTorqueMaxRequest Request;
typedef SetTorqueMaxResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetTorqueMax
} // namespace poppy_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::poppy_msgs::SetTorqueMax > {
  static const char* value()
  {
    return "38f0e745a4598ee480032418e4d9c65f";
  }

  static const char* value(const ::poppy_msgs::SetTorqueMax&) { return value(); }
};

template<>
struct DataType< ::poppy_msgs::SetTorqueMax > {
  static const char* value()
  {
    return "poppy_msgs/SetTorqueMax";
  }

  static const char* value(const ::poppy_msgs::SetTorqueMax&) { return value(); }
};


// service_traits::MD5Sum< ::poppy_msgs::SetTorqueMaxRequest> should match
// service_traits::MD5Sum< ::poppy_msgs::SetTorqueMax >
template<>
struct MD5Sum< ::poppy_msgs::SetTorqueMaxRequest>
{
  static const char* value()
  {
    return MD5Sum< ::poppy_msgs::SetTorqueMax >::value();
  }
  static const char* value(const ::poppy_msgs::SetTorqueMaxRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::poppy_msgs::SetTorqueMaxRequest> should match
// service_traits::DataType< ::poppy_msgs::SetTorqueMax >
template<>
struct DataType< ::poppy_msgs::SetTorqueMaxRequest>
{
  static const char* value()
  {
    return DataType< ::poppy_msgs::SetTorqueMax >::value();
  }
  static const char* value(const ::poppy_msgs::SetTorqueMaxRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::poppy_msgs::SetTorqueMaxResponse> should match
// service_traits::MD5Sum< ::poppy_msgs::SetTorqueMax >
template<>
struct MD5Sum< ::poppy_msgs::SetTorqueMaxResponse>
{
  static const char* value()
  {
    return MD5Sum< ::poppy_msgs::SetTorqueMax >::value();
  }
  static const char* value(const ::poppy_msgs::SetTorqueMaxResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::poppy_msgs::SetTorqueMaxResponse> should match
// service_traits::DataType< ::poppy_msgs::SetTorqueMax >
template<>
struct DataType< ::poppy_msgs::SetTorqueMaxResponse>
{
  static const char* value()
  {
    return DataType< ::poppy_msgs::SetTorqueMax >::value();
  }
  static const char* value(const ::poppy_msgs::SetTorqueMaxResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // POPPY_MSGS_MESSAGE_SETTORQUEMAX_H
