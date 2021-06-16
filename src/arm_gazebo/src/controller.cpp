#include <functional>
#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/common/common.hh>
#include <ignition/math/Vector3.hh>
#include <iostream>
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
			this->pid = common::PID(70.1, 10.01, 10.03);
			// std::string name = this->model->GetJoint("arm1_arm2_joint")->GetScopedName();
			// this->jointController->SetPositionPID(name, pid);

			std::string joint1 = this->model->GetJoint("arm1_arm2_joint")->GetScopedName();
			std::string joint2 = this->model->GetJoint("arm2_arm3_joint")->GetScopedName();
			std::string joint3 = this->model->GetJoint("arm3_arm4_joint")->GetScopedName();
			std::string joint4 = this->model->GetJoint("arm4_arm5_joint")->GetScopedName();
			


			this->SetPID(joint1, pid);
		  	this->SetPID(joint2, pid);
			this->SetPID(joint3, pid);
			this->SetPID(joint4, pid);
		  	
			
			
			// Listen to the update event. This event is broadcast every
			// simulation iteration.
			this->updateConnection = event::Events::ConnectWorldUpdateBegin(
				std::bind(&ModelPush::OnUpdate, this));

		
		}

		// Called by the world update start event
	public:
		void OnUpdate()
		{
			catchBox();
			releaseBox();
			
		}
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
		// a pointer that points to a model object

	public:
		void catchBox()
		{
			
			this->pid = common::PID(10.1, 3.01, 3.03);
			std::string palmjoinleft = this->model->GetJoint("palm_left_finger")->GetScopedName();
			std::string palmjointright = this->model->GetJoint("palm_right_finger")->GetScopedName();
			this->SetPID(palmjoinleft,pid);
			this->SetAngle(palmjoinleft, -1);
			this->SetPID(palmjointright, pid);
			this->SetAngle(palmjointright, 1);
		}

	public:
		void releaseBox()
		{
			
			this->pid = common::PID(10.1, 3.01, 3.03);
			std::string palmjoinleft = this->model->GetJoint("palm_left_finger")->GetScopedName();
			std::string palmjointright = this->model->GetJoint("palm_right_finger")->GetScopedName();
			common::PID _pid = common::PID(10.0, 5.0, 2.0);
			this->SetPID(palmjoinleft, pid);
			this->SetAngle(palmjoinleft, 1);
			this->SetPID(palmjointright, pid);
			this->SetAngle(palmjointright, -1);
		}

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
}