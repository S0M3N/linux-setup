#!/usr/bin/bash
# first initial updates and upgrades
echo "Updating your repos"
sudo apt update && sudo apt upgrade -y
echo ""
echo "update completed"

# installing pre requirements
echo "installing basic requirements"
sudo apt install -y curl wget git tlp vlc gimp neofetch wget gparted bpytop gnome-disk-utility
echo "installation successful"
echo " "
# installing the programming languages
echo "" 
echo "installing the language packages"
sudo apt install python2 python3 python3-pip gcc gpp default-jdk ubuntu-restricted-extras preload gnome-tweaks 

echo ""
echo "language setup done"
echo "" 
# installing applications
echo "setting up VS Code"
#installing and setting up vs code
sudo apt install snapd
sudo snap install --classic code

echo ""
echo "vscode setup completed"

echo""
echo "installing and setting up ms edge"
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg && sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-stable.list'
sudo rm microsoft.gpg && sudo apt update && sudo apt install microsoft-edge-stable 

echo "MS Edge browser setup successfully"
# installing python important packages
echo ""
echo "installing required python packages"

sudo pip3 install tk numpy scipy sklearn pandas virtualenv django 

echo "important python packages installed successfully..."

# installing text editor
echo ""
echo "installing pluma text editor"

sudo apt install pluma

echo "pluma installed successfully"
echo ""

# installing megasync
echo "installing megaSync"
cd ~/Download || exit
mkdir App
cd App || exit
wget https://mega.nz/linux/MEGAsync/xUbuntu_20.04/amd64/megacmd-xUbuntu_20.04_amd64.deb
sudo apt install ./megacmd*.deb
cd || exit
echo ""
echo "megaSync installed successfully"

echo "_____________________________________"
echo "Deleting and clearing unwanted stuffs"
sudo apt autoremove && sudo apt autoclean
echo "_____________________________________"
echo "Yoho! Done"
echo "Now linux is yours"
echo "Dont forget to star my repo and support opensource where you can."
sleep 3
clear
