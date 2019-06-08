FROM python:3.7.3-stretch
COPY . /arduino
RUN pip install -r /arduino/requirements.txt
CMD ["python","/arduino/src/arduino.py"]
