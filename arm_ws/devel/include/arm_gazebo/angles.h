// Generated by gencpp from file arm_gazebo/angles.msg
// DO NOT EDIT!


#ifndef ARM_GAZEBO_MESSAGE_ANGLES_H
#define ARM_GAZEBO_MESSAGE_ANGLES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace arm_gazebo
{
template <class ContainerAllocator>
struct angles_
{
  typedef angles_<ContainerAllocator> Type;

  angles_()
    : alpha(0.0)
    , beta(0.0)
    , gamma(0.0)
    , theta(0.0)  {
    }
  angles_(const ContainerAllocator& _alloc)
    : alpha(0.0)
    , beta(0.0)
    , gamma(0.0)
    , theta(0.0)  {
  (void)_alloc;
    }



   typedef float _alpha_type;
  _alpha_type alpha;

   typedef float _beta_type;
  _beta_type beta;

   typedef float _gamma_type;
  _gamma_type gamma;

   typedef float _theta_type;
  _theta_type theta;





  typedef boost::shared_ptr< ::arm_gazebo::angles_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::arm_gazebo::angles_<ContainerAllocator> const> ConstPtr;

}; // struct angles_

typedef ::arm_gazebo::angles_<std::allocator<void> > angles;

typedef boost::shared_ptr< ::arm_gazebo::angles > anglesPtr;
typedef boost::shared_ptr< ::arm_gazebo::angles const> anglesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::arm_gazebo::angles_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::arm_gazebo::angles_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::arm_gazebo::angles_<ContainerAllocator1> & lhs, const ::arm_gazebo::angles_<ContainerAllocator2> & rhs)
{
  return lhs.alpha == rhs.alpha &&
    lhs.beta == rhs.beta &&
    lhs.gamma == rhs.gamma &&
    lhs.theta == rhs.theta;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::arm_gazebo::angles_<ContainerAllocator1> & lhs, const ::arm_gazebo::angles_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace arm_gazebo

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::arm_gazebo::angles_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arm_gazebo::angles_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::arm_gazebo::angles_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::arm_gazebo::angles_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arm_gazebo::angles_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arm_gazebo::angles_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::arm_gazebo::angles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e721dce72ff14c1f85d2e08ba65b8f95";
  }

  static const char* value(const ::arm_gazebo::angles_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe721dce72ff14c1fULL;
  static const uint64_t static_value2 = 0x85d2e08ba65b8f95ULL;
};

template<class ContainerAllocator>
struct DataType< ::arm_gazebo::angles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "arm_gazebo/angles";
  }

  static const char* value(const ::arm_gazebo::angles_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::arm_gazebo::angles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 alpha\n"
"float32 beta \n"
"float32 gamma\n"
"float32 theta\n"
;
  }

  static const char* value(const ::arm_gazebo::angles_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::arm_gazebo::angles_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.alpha);
      stream.next(m.beta);
      stream.next(m.gamma);
      stream.next(m.theta);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct angles_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::arm_gazebo::angles_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::arm_gazebo::angles_<ContainerAllocator>& v)
  {
    s << indent << "alpha: ";
    Printer<float>::stream(s, indent + "  ", v.alpha);
    s << indent << "beta: ";
    Printer<float>::stream(s, indent + "  ", v.beta);
    s << indent << "gamma: ";
    Printer<float>::stream(s, indent + "  ", v.gamma);
    s << indent << "theta: ";
    Printer<float>::stream(s, indent + "  ", v.theta);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ARM_GAZEBO_MESSAGE_ANGLES_H
