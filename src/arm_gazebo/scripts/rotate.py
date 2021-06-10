import numpy as np


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



rx = np.array([])
ry = np.array([])
rz = np.array([])
rx = rotatex(np.radians(60))
ry = rotatey(np.radians(60))
rz = rotatez(np.radians(60))

print(rx)
print(ry)
print(rz)


print(translatex(4))



M1 = translatez(0.1)
M2 = rotatez(np.radians(60)).dot(translatez(0.05))
M3 = rotatex(np.radians(30)).dot(translatez(2))
M4 = rotatex(np.radians(-45)).dot(translatez(1))
M5 = rotatex(np.radians(-30)).dot(translatez(0.5))
M = (((M1.dot(M2)).dot(M3)).dot(M4)).dot(M5)
print(M)
import tinyik as ik
arm = ik.Actuator([
    'z',[0,0,0.15],
    'x',[0,0,2.0],
    'x',[0,0,1.0],
    'x',[0,0,0.5]
])
arm.ee = [1.0,1.0,1.0]
print('ANGLES',arm.angles)