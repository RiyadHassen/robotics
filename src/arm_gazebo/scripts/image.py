import cv2 as cv
import numpy as np


image = cv.imread('car.jpeg',cv.IMREAD_GRAYSCALE)

new_image = np.zeros_like(image)
print(new_image)

filter = np.array([
    [-1,0,1],
    [-2,0,2],
    [-1,0,1]
])
k=3
for i in range(image.shape[0]-2):
    for j in range(image.shape[1]-2):
        patch = image[i:i+k,j:j+k]
        # result = filter*patch
        # result =result.mean()
        Gx = (filter *patch).sum()
        Gy= (filter.T * patch).sum()
        G = np.sqrt(Gx**2 + Gy **2)
        new_image[i,j]=G

cv.imshow('Model-y',image)
cv.waitKey(0) 
