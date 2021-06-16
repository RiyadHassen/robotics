#include <functional>
#include <iostream>
#include <thread>
#include "ros/ros.h"
#include "gazebo/transport/transport.hh"
#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/common/common.hh>
#include <ignition/math/Vector3.hh>

namespace gazebo
{
  class Gripper: public ModelPlugin
  {
    public: void Load(physics::ModelPtr _parent, sdf::ElementPtr /*_sdf*/)
    {
      // Store the pointer to the model
      this->model = _parent;
	  
      std::string joint1 = this->model->GetJoint("chasis_arm1_joint")->GetScopedName();
	//   std::string joint2 = this->model->GetJoint("arm1_arm2_joint")->GetScopedName();
	//   std::string joint3 = this->model->GetJoint("arm2_arm3_joint")->GetScopedName();
	//   std::string arm3Arm4Joint = this->model->GetJoint("arm3_arm4_joint")->GetScopedName();
	//   std::string arm4Arm5Joint = this->model->GetJoint("arm4_arm5_joint")->GetScopedName();
	//   std::string palmLeftFinger = this->model->GetJoint("palm_left_finger")->GetScopedName();
    //   std::string palmRightFinger = this->model->GetJoint("palm_right_finger")->GetScopedName();
    //   std::string palmriser = this->model->GetJoint("palm_riser")->GetScopedName();
	  std::cout<<joint1; 
       
      common::PID joint1PID = common::PID(30.0, 10.0, 10.0);
	  common::PID joint2PID = common::PID(30.0, 10.0, 10.0);
	//   common::PID joint3PID = common::PID(30.0, 10.0, 10.0);
	//   common::PID joint4PID = common::PID(30.0, 10.0, 10.0);
	//   common::PID joint5PID = common::PID(30.0, 10.0, 10.0);
	//   common::PID joint6PID = common::PID(30.0, 10.0, 10.0);

			// this->SetPID(chasisArm1Joint, joint1PID);
	  this->SetPID(joint1, joint2PID);
	//   this->SetPID(joint3, joint3PID);
	//   this->SetPID(arm3Arm4Joint, joint4PID);
	//   this->SetPID(arm4Arm5Joint, joint5PID);
	//    this->SetPID(palmLeftFi, joint6PID);
      // Listen to the update event. This event is broadcast every
      // simulation iteration.
      
    }

    // Called by the world update start event
    public: void OnUpdate()
    {
      // Apply a small linear velocity to the model.
    //   this->model->SetLinearVel(ignition::math::Vector3d(.3, 0, 0));
    }

	public:
		void catchBox(std::vector<double> _pose)
		{
			// this->updateJointAngles(_pose);
			std::string palm_left_finger = this->model->GetJoint("palm_left_finger")->GetScopedName();
			std::string palm_right_finger = this->model->GetJoint("palm_right_finger")->GetScopedName();
			common::PID _pid = common::PID(300.0, 10.0, 10.0);
			this->SetPID(palm_left_finger, _pid);
			this->SetAngle(palm_left_finger, -1.57);
			this->SetPID(palm_right_finger, _pid);
			this->SetAngle(palm_right_finger, 1.57);
		}
  


  public:
		void releaseBox(std::vector<double> _pose)
		{
			// this->updateJointAngles(_pose);
			std::string palm_left_finger = this->model->GetJoint("palm_left_finger")->GetScopedName();
			std::string palm_right_finger = this->model->GetJoint("palm_right_finger")->GetScopedName();
			common::PID _pid = common::PID(10.0, 5.0, 2.0);
			this->SetPID(palm_left_finger, _pid);
			this->SetAngle(palm_left_finger, 0.0);
			this->SetPID(palm_right_finger, _pid);
			this->SetAngle(palm_right_finger, 0.0);
		}

	// Pointer to the model
	private:
			physics::ModelPtr model;

	// Pointer to the update event connection
	private: 
			event::ConnectionPtr updateConnection;  

	private:
			physics::JointControllerPtr jointController;
	private:
		void SetPID(std::string jointName, common::PID _pid)
		{
			this->jointController->SetPositionPID(jointName, _pid);
		}
	private:
		double GetAngle(std::string jointName)
		{
			return physics::JointState(this->model->GetJoint(jointName)).Position();
		}

	private:
		void SetAngle(std::string jointName, double _angle)
		{
			this->jointController->SetPositionTarget(jointName, _angle);
		}


   
  };

  // Register this plugin with the simulator
  GZ_REGISTER_MODEL_PLUGIN(Gripper)
}