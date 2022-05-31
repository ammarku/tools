#! /bin/bash
printf "Installing RDP Be Patience... " >&2
{
sudo useradd -m user
sudo adduser user sudo
echo 'user:root' | sudo chpasswd
sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd
sudo apt-get update
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo dpkg --install chrome-remote-desktop_current_amd64.deb
sudo apt install --assume-yes --fix-broken
sudo DEBIAN_FRONTEND=noninteractive \
apt install --assume-yes xfce4 desktop-base
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'  
sudo apt remove --assume-yes gnome-terminal
sudo apt remove xscreensaver
sudo systemctl disable lightdm.service
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg --install google-chrome-stable_current_amd64.deb
sudo apt install --assume-yes --fix-broken
sudo apt install nautilus nano -y 
sudo adduser user chrome-remote-desktop
wget https://gitlab.com/mailzakode/ku/-/raw/main/tools/anticaptcha-plugin_v0.62.zip -O /home/user/anticaptcha-plugin_v0.62.zip && cd /home/user && unzip anticaptcha-plugin_v0.62.zip
wget https://gitlab.com/mailzakode/ku/-/raw/main/tools/ext.sh -O /home/user/ext.sh && cd /home/user && sudo sh ext.sh
} &> /dev/null &&
printf "\nSetup Complete " >&2 ||
printf "\nError Occured " >&2
printf '\nCheck https://remotedesktop.google.com/headless  Copy Command Of Debian Linux And Paste Down\n'
read -p "Paste Here: " CRP
su - user -c """$CRP"""
printf 'Check https://remotedesktop.google.com/access/ \n\n'
service chrome-remote-desktop start
if sudo apt-get upgrade &> /dev/null
then
    printf "\n\nUpgrade Completed " >&2
else
    printf "\n\nError Occured " >&2
fi
