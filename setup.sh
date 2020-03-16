#!/bin/bash
#For setting up GNU Radio 3.8 without the trouble of finding dependencies!

sudo apt install git cmake g++ libboost-all-dev libgmp-dev swig python3-numpy \
python3-mako python3-sphinx python3-lxml doxygen libfftw3-dev \
libsdl1.2-dev libgsl-dev libqwt-qt5-dev libqt5opengl5-dev python3-pyqt5 \
liblog4cpp5-dev libzmq3-dev python3-yaml python3-click python3-click-plugins \
python3-zmq python3-scipy python3-pip

pip3 install git+https://github.com/pyqtgraph/pyqtgraph@develop

echo 'export PYTHONPATH=/usr/local/lib/python3/dist-packages:usr/local/lib/python2.7/site-packages:$PYTHONPATH' >> ~/.bashrc 
echo 'export LD_LIBRARY_PATH=/user/local/lib:$LD_LIBRARY_PATH' >> ~/.bashrc
echo 'export PYTHONPATH=/usr/local/lib/python3/dist-packages:usr/local/lib/python2.7/site-packages:$PYTHONPATH' >> ~/.profile
echo 'export LD_LIBRARY_PATH=/user/local/lib:$LD_LIBRARY_PATH' >> ~/.profile

cd ~/
git clone --recursive https://github.com/wbarnha/gnuradio
cd gnuradio
git checkout 3.8filter
mkdir build
cd build
cmake -DENABLE_GR_UHD=OFF ..
make -j $(nproc --all)
sudo make install
sudo ldconfig
