import numpy as np
import os
import sys
from PIL import Image

image = Image.new("RGB", (200, 200), "white")
draw = Image.Draw(image)
draw.line((0, 0) + image.size, fill=128)
draw.line((0, image.size[1], image.size[0], 0), fill=128)
image.save("output_image.png")
print("Image saved as output_image.png")


array1 = np.array([[1, 2, 3], [4, 5, 6]])
array2 = np.array([[7, 8, 9], [10, 11, 12]])
sum_array = array1 + array2
print("Numpy Array Manipulation:")
print(sum_array)

# env_var_value = os.environ.get('PATH', 'Default Value')
# print(f"Environment variable MY_ENV_VARIABLE: {env_var_value}")

input_arg1 = sys.argv[1]
input_arg2 = sys.argv[2]

print("Arg1 is : ",input_arg1)
print("Arg2 is : ",input_arg2)


   
  
 
