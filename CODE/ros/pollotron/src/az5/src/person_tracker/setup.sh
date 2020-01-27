virtualenv env --python=python3
source env/bin/activate

pip3 install numpy
pip3 install opencv-python
pip3 install Pillow
pip3 install matplotlib
pip3 install scipy
pip3 install filterpy
pip3 install numba
pip3 install scikit-image
pip3 install scikit-learn
pip3 install face_recognition

mkdir yolov3-coco
wget https://pjreddie.com/media/files/yolov3-tiny.weights
wget https://pjreddie.com/media/files/yolov3.weights
wget https://www.dropbox.com/s/r2ingd0l3zt8hxs/frozen_east_text_detection.tar.gz?dl=1
mv yolov3-tiny.weights yolov3-coco
mv yolov3.weights yolov3-coco
mv frozen_east_text_detection.tar.gz east_text_detection
tar -xvzf east_text_detection/frozen_east_text_detection.tar.gz
rm -fr *.tar.gz