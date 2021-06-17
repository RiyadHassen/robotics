import tinyik as tk
from arm_gazebo.srv import ik, ikResponse
import rospy

def Handle_IK(req):
    desired_pose = req.desired_pose
    arm = tk.Actuator([
        'z', [0, 0, 0.15], #chasis_arm1
        'x', [0, 0, 2.0],  #arm1_arm2
        'x', [0, 0, 1.0],  #arm2_arm3
        'x', [0, 0, 0.5],  #arm3_arm4
        'z', [0, 0, 0.1],  #arm4_arm5
        'y', [0, 0, 0.1],  #arm5_palm
    ])
    arm.ee = [desired_pose[0], desired_pose[1], desired_pose[2]]
    return ikResponse(arm.angles)

def IK_Server():
    rospy.init_node('ik_server')
    s = rospy.Service('IK', ik, Handle_IK)
    print("Ready to IK.")
    rospy.spin()

if __name__ == "__main__":
    IK_Server()