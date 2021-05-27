#include <functional>
#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/common/common.hh>
#include <ignition/math/Vector3.hh>
#include <iostream>
#include <sstream>
#include "arm_gazebo/angles.h"
namespace gazebo
{
  class Modelpush : public ModelPlugin
  {
    void chatterCallback(const arm_lib::angles::ConstPtr &msg)
    {
      ROS_INFO("Vectors after transformation: (x',y',z')=(%.2f,%.2f, %.2f)", msg->x, msg->y, msg->z);
      float rad = M_PI * angleDegree / 180;
    }

  public:
    void Load(physics::ModelPtr _parent, sdf::ElementPtr /*_sdf*/)
    {
      this->model = _parent;
      this->jointController = this->model->GetJointController();
      this->pid = common::PID(0.1, 0.01, 0.03);
      this->updateConnection = event::Events::ConnectWorldUpdateBegin(std::bind(&Modelpush::OnUpdate, this));
    }

  public:
    void publish_angels(float ang[3])
    {
      std_msgs::String msg;
      std::stringstream ss;
      ss << " base_arm1_joint : ," << ang[0];
      ss << " arm1_arm2_joint : ," << ang[1];
      ss << " arm2_arm3_joint : ," << ang[2];
      ss << " arm3_arm4_joint : ," << ang[3];
      msg.data = ss.str();
      chatter_pub.publish(msg);
      ros::spinOnce();
      loop_rate.sleep();
    }

  public:
    void OnUpdate()
    {
      float ang[3] = [
        (physics::JointState(this->model->GetJoint("base_arm1_joint")).Position(0))*(180.0 / M_PI),
        (physics::JointState(this->model->GetJoint("arm1_arm2_joint")).Position(0))*(180.0 / M_PI),
        (physics::JointState(this->model->GetJoint("arm2_arm3_joint")).Position(0))*(180.0 / M_PI),
        (physics::JointState(this->model->GetJoint("arm3_arm4_joint")).Position(0))*(180.0 / M_PI))
      ]
        publish_angels(ang)
        ros::spinOnce();

      // this->jointController->SetPositionPID(name,pid);

      // this->jointController->SetPositionTarget(name, rad);
      this->jointController->Update();
    }

  private:
    physics::ModelPtr model;

  private:
    physics::JointControllerPtr jointController;

  private:
    event::ConnectionPtr updateConnection;

  private:
    common::PID pid;
  };
  GZ_REGISTER_MODEL_PLUGIN(Modelpush)
}