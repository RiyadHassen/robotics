#!/usr/bin/env python3
import rospy
from arm_lib.msg import angle
from math import cos,sin, radians

rospy.init_node('transformer')

def callback(msg):
    transformed = angle()
    xC, xS = trig(rotation[msg.alpha])
    yC, yS = trig(rotation[msg.beta])
    zC, zS = trig(rotation[msg.gamma])
    dX = translation[msg.x]
    dY = translation[msg.y]
    dZ = translation[msg.z]
    Translate_matrix = np.array([[1, 0, 0, dX],
                                [0, 1, 0, dY],
                                [0, 0, 1, dZ],
                                [0, 0, 0, 1]])
    Rotate_X_matrix = np.array([[1, 0, 0, 0],
                                [0, xC, -xS, 0],
                                [0, xS, xC, 0],
                                [0, 0, 0, 1]])
    Rotate_Y_matrix = np.array([[yC, 0, yS, 0],
                                [0, 1, 0, 0],
                                [-yS, 0, yC, 0],
                                [0, 0, 0, 1]])
    Rotate_Z_matrix = np.array([[zC, -zS, 0, 0],
                                [zS, zC, 0, 0],
                                [0, 0, 1, 0],
                                [0, 0, 0, 1]])
    transformed = np.dot(Rotate_Z_matrix,np.dot(Rotate_Y_matrix,np.dot(Rotate_X_matrix,Translate_matrix)))
    return transformed  
       

def trig(angle):
    r = radians(angle)
    return cos(r), sin(r)
sub = rospy.Subscriber('transform', angle, callback)
pub = rospy.Publisher('transorm', angle)
rospy.spin()
