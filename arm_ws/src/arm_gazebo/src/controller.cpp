#include <functional>
#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/common/common.hh>
#include <ignition/math/Vector3.hh>
#include <iostream>
<<<<<<< HEAD
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
=======
namespace gazebo
{
	class ModelPush : public ModelPlugin
	{
	public:
		void Load(physics::ModelPtr _parent, sdf::ElementPtr /*_sdf*/)
		{
			// Store the pointer to the model
			this->model = _parent;

			// // intiantiate the joint controller
			this->jointController = this->model->GetJointController();

			// // set your PID values
			this->pid = common::PID(30.1, 10.01, 10.03);

			auto joint_name = "arm1_arm2_joint";

			std::string name = this->model->GetJoint("arm1_arm2_joint")->GetScopedName();

			this->jointController->SetPositionPID(name, pid);

			// Listen to the update event. This event is broadcast every
			// simulation iteration.
			this->updateConnection = event::Events::ConnectWorldUpdateBegin(
				std::bind(&ModelPush::OnUpdate, this));
		}

		// Called by the world update start event
	public:
		void OnUpdate()
		{
			float angleDegree = -90;
			float rad = M_PI * angleDegree / 180;

			std::string name = this->model->GetJoint("arm1_arm2_joint")->GetScopedName();
			// this->jointController->SetPositionPID(name, pid);
			// this->jointController->SetPositionTarget(name, rad);
			// this->jointController->Update();

			// Get joint position by index. 
			// 0 returns rotation accross X axis
			// 1 returns rotation accross Y axis
			// 2 returns rotation accross Z axis
			// If the Joint has only Z axis for rotation, 0 returns that value and 1 and 2 return nan
			double a1 = physics::JointState(this->model->GetJoint("arm1_arm2_joint")).Position(0);
			// double a2 = this->model->GetJoint("chasis_arm1_joint").Position(0);
			// double a3 = physics::JointState(this->model->GetJoint("chasis_arm1_joint")).Position(2);
			std::cout << "Current arm1_arm2_joint values: " << a1 * 180.0 / M_PI << std::endl;
		}

		// a pointer that points to a model object
	private:
		physics::ModelPtr model;

		// 	// A joint controller object
		// 	// Takes PID value and apply angular velocity
		// 	//  or sets position of the angles
	private:
		physics::JointControllerPtr jointController;

	private:
		event::ConnectionPtr updateConnection;

		// // 	// PID object
	private:
		common::PID pid;
	};

	// Register this plugin with the simulator
	GZ_REGISTER_MODEL_PLUGIN(ModelPush)
>>>>>>> 483760400e61e7a869d19143084f3385f37d4068
}