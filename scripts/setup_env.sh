apt -y update
DEBIAN_FRONTEND="noninteractive" apt install -y tzdata
apt install -y build-essential cmake sudo nano
apt install -y python-dev  python-tk  pylint  python-numpy  \
                        python3-dev python3-tk pylint3 python3-numpy flake8
apt install -y perl git wget doxygen unzip wget ant default-jdk
apt install -y libgl1-mesa-dev
apt install -y libjpeg-dev libpng-dev libtiff-dev
apt install -y libavcodec-dev libavformat-dev libavutil-dev libpostproc-dev libswscale-dev libavdevice-dev libsdl-dev
apt install -y libgtk2.0-dev
apt install -y libblas-dev liblapack-dev
apt install -y libgl1-mesa-dev libglew-dev
apt install -y qt5-default libvtk6-dev
apt install -y zlib1g-dev libjpeg-dev libwebp-dev libpng-dev libtiff5-dev libopenexr-dev libgdal-dev

apt install -y libdc1394-22-dev libavcodec-dev libavformat-dev libswscale-dev \
                        libtheora-dev libvorbis-dev libxvidcore-dev libx264-dev yasm \
                        libopencore-amrnb-dev libopencore-amrwb-dev libv4l-dev libxine2-dev

apt install -y libtbb-dev libeigen3-dev

## run the script file to install opencv
cd && chmod +x install_opencv.sh && ./install_opencv.sh

## install pangolin
apt install libpython2.7-dev -y
cd && git clone https://github.com/stevenlovegrove/Pangolin.git && \
  cd Pangolin && mkdir build && cd build && cmake .. && make -j4

## build orb slam2
## we are using a forked and improved version
cd && git clone https://github.com/erkidhoxholli/ORB_SLAM2 ORB_SLAM2
cd && cd ORB_SLAM2 && chmod +x ./build.sh && ./build.sh
