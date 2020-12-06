#!/bin/bash

echo "[setup git]"
git config --global user.email "freetime4y@gmail.com"
git config --global user.name "Eunchan Park"

echo "[setup udev rules]"
sudo bash -c "cp ./11-usb-serial.rules /etc/udev/rules.d/"


echo "[apt upadte and install]"
sudo apt update
sudo apt install -y openssh-server x11vnc xserver-xorg-video-dummy net-tools

echo "[Eunchan's alias and export]"
echo "[press enter to contine]"
read

echo '
export MYIP=192.168.0.76
export ROS_MASTER_URI=http://$MYIP:11311
export ROS_HOSTNAME=$MYIP
' >> ~/.bashrc




echo "[ROS install]"
echo "[ press enter to contine ]"
read
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

sudo apt update
sudo apt install -y ros-noetic-desktop-full


echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source ~/.bashrc



echo "[catkin install]"
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list'
wget http://packages.ros.org/ros.key -O - | sudo apt-key add -
sudo apt-get update
sudo apt install python3-catkin-tools
