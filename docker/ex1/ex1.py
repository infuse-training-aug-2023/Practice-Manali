

import numpy as np
import cv2
import pyautogui

arr = np.arange(1,30,3)

# arr[1]
print(arr[1])

   
  
# take screenshot using pyautogui
image = pyautogui.screenshot()
   

image = cv2.cvtColor(np.array(image),cv2.COLOR_RGB2BGR)
   
# writing it to the disk using opencv
cv2.imwrite("image1.png", image)
