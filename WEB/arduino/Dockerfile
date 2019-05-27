FROM python:3.8.0a3
COPY . /arduino
RUN pip install -r /arduino/requirements.txt
CMD ["python","/arduino/src/arduino.py"]
