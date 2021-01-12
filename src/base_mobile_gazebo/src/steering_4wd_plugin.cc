#ifndef _STEERING_4WD_PLUGIN_HH_
#define _STEERING_4WD_PLUGIN_HH_

#include <gazebo/common/Plugin.hh>
#include <ros/ros.h>

namespace gazebo
{
  /// \brief A plugin to control a 4WD Mobile base.
  class Steering4wdPlugin : public WorldPlugin
  {
    /// \brief Constructor
    public: Steering4wdPlugin() : WorldPlugin() {}

    public: void Load(physics::WorldPtr _world, sdf::ElementPtr _sdf)
    {
      // Make sure the ROS node for Gazebo has already been initialized
      if (!ros::isInitialized())
      {
        ROS_FATAL_STREAM("A ROS node for Gazebo has not been initialized, unable to load plugin. "
          << "Load the Gazebo system plugin 'libgazebo_ros_api_plugin.so' in the gazebo_ros package)");
        return;
      }

      ROS_INFO("Hello World!");
    }
  };

  // Tell Gazebo about this plugin, so that Gazebo can call Load on this plugin.
  GZ_REGISTER_WORLD_PLUGIN(Steering4wdPlugin)
}
#endif  //_STEERING_4WD_PLUGIN_HH_
