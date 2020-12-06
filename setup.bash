#!/bin/bash
git config --global user.email "freetime4y@gmail.com"
git config --global user.name "Eunchan Park"

#install
sudo apt update
sudo apt install -y openssh-server x11vnc xserver-xorg-video-dummy


#ros
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

echo "[ press enter to contine ]"
read

sudo apt update

sudo apt install -y ros-noetic-desktop-full


echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source ~/.bashrc

