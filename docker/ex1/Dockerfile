FROM python:3
RUN pip install numpy
# RUN pip install opencv-python
# RUN pip install pyautogui
RUN pip install pillow

COPY . /app
WORKDIR /app
CMD python ex1.py arg1 arg2
