#!/bin/bash

#Get the necessary components
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install software-properties-common -y
sudo add-apt-repository universe -y
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install cinnamon-desktop-environment tightvncserver -y

#Setup the necessary files
sudo mkdir ~/.vnc
sudo wget https://raw.githubusercontent.com/03stevensmi/AnLinux-Resources/master/Scripts/DesktopEnvironment/Apt/Cinnamon/xstartup -P ~/.vnc/
sudo wget https://raw.githubusercontent.com/03stevensmi/AnLinux-Resources/master/Scripts/DesktopEnvironment/Apt/Cinnamon/vncserver-start -P /usr/local/bin/
sudo wget https://raw.githubusercontent.com/03stevensmi/AnLinux-Resources/master/Scripts/DesktopEnvironment/Apt/Cinnamon/vncserver-stop -P /usr/local/bin/

sudo chmod +x ~/.vnc/xstartup
sudo chmod +x /usr/local/bin/vncserver-start
sudo chmod +x /usr/local/bin/vncserver-stop

echo " "
echo "You can now start vncserver by running vncserver-start"
echo " "
echo "It will ask you to enter a password when first time starting it."
echo " "
echo "The VNC Server will be started at 127.0.0.1:5901"
echo " "
echo "You can connect to this address with a VNC Viewer you prefer"
echo " "
echo "Connect to this address will open a window with Mate Desktop Environment"
echo " "
echo " "
echo " "
echo "Running vncserver-start"
echo " "
echo " "
echo " "
echo "To Kill VNC Server just run vncserver-stop"
echo " "
echo " "
echo " "

echo "export DISPLAY=":1"" >> /etc/profile
source /etc/profile

vncserver-start
