import numpy as np
import rospy
from arm_gazebo.srv import fk,fkResponse





def fkhandler(request):
    joint_angles = request.joint_angles
    link_lengths = request.link_lengths 
    M1 = Rz(joint_angles[0]).dot(Tz(link_lengths[0]))
    M2 = M1.dot(Rx(joint_angles[1])).dot(Tz(link_lengths[1]))
    M3 = M2.dot(Rx(joint_angles[2])).dot(Tz(link_lengths[2]))
    M4 = M3.dot(Rx(joint_angles[3])).dot(Tz(link_lengths[3]))
    M5 = M4.dot(Ry(joint_angles[4])).dot(Tz(link_lengths[4]))
    M6 = M5.dot(Rz(joint_angles[5])).dot(Tz(link_lengths[5]))
    M7 = M6.dot(Tx(link_lengths[6] / 2))

    acutator_pose = np.array([M7[0][3], M7[1][3], M7[2][3]])

    print("Returning: ", acutator_pose)
    return fkResponse(acutator_pose)

def FK_Server():
    rospy.init_node('fk_server')
    s = rospy.Service('FK', fk, fkhandler)
    print("Ready to FK.")
    rospy.spin()


def rotatex(rad):
    return np.array([[1, 0 , 0, 0], [0,np.cos(rad),-np.sin(rad),0],
    [0,np.sin(rad),np.cos(rad),0],[0, 0 , 0, 1]])
def rotatey(rad):
    return np.array([[np.cos(rad), 0 , -np.sin(rad),0], 
                     [0,1,0,0],
                    [np.sin(rad),0,np.cos(rad),0],
                    [0, 0 , 0, 1]])
def rotatez(rad):
    return np.array([
    [np.cos(rad),-np.sin(rad),0,0],
    [np.sin(rad),np.cos(rad),0,0],
    [0 , 0, 1, 0], 
    [0, 0 , 0, 1]])
def translatez(d):
    m = np.eye(4)
    m[2,3] = d
    return m

def translatey(d):
    m = np.eye(4)
    m[1,3] = d
    return m
def translatex(d):
    m = np.eye(4)
    m[0,3] = d
    return m    



# rx = np.array([])
# ry = np.array([])
# rz = np.array([])
# rx = rotatex(np.radians(60))
# ry = rotatey(np.radians(60))
# rz = rotatez(np.radians(60))

# print(rx)
# print(ry)
# print(rz)


# print(translatex(4))



if __name__=="__main__":
    FK_Server()