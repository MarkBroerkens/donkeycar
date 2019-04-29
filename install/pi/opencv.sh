#install opencv (1 hour)
#instructions from:https://raspberrypi.stackexchange.com/questions/69169/how-to-install-opencv-on-raspberry-pi-3-in-raspbian-jessie

git clone --branch 3.4.6 --depth 1  https://github.com/opencv/opencv.git ~/opencv
git clone --branch 3.4.6 --depth 1 https://github.com/opencv/opencv_contrib.git ~/opencv_contrib

cd ~/opencv
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D INSTALL_C_EXAMPLES=OFF \
    -D INSTALL_PYTHON_EXAMPLES=OFF \
    -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib/modules \
    -D BUILD_EXAMPLES=OFF ..
make -j4
sudo make install
sudo ldconfig
