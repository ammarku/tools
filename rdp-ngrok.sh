#! /bin/bash
sudo useradd -m user > /dev/null 2>&1
sudo adduser user sudo > /dev/null 2>&1
echo 'user:root' | sudo chpasswd
sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd
wget -O ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok.zip > /dev/null 2>&1
read -p "Paste Ngrok Authtoken: " CRP
./ngrok authtoken $CRP > /dev/null 2>&1
nohup ./ngrok tcp 3389 &>/dev/null &
sudo apt update > /dev/null 2>&1
echo "Install XFCE"
sudo apt install --assume-yes xfce4 desktop-base xfce4-terminal > /dev/null 2>&1
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > /dev/null 2>&1
sudo dpkg --install google-chrome-stable_current_amd64.deb > /dev/null 2>&1
sudo apt remove xscreensaver > /dev/null 2>&1
sudo apt install --assume-yes --fix-broken > /dev/null 2>&1
sudo wget https://gitlab.com/mailzakode/ku/-/raw/main/tools/anticaptcha-plugin_v0.62.zip -O /home/user/anticaptcha-plugin_v0.62.zip > /dev/null 2>&1 && cd /home/user && unzip anticaptcha-plugin_v0.62.zip > /dev/null 2>&1
sudo wget https://gitlab.com/mailzakode/ku/-/raw/main/tools/ext.sh > /dev/null 2>&1 && sudo sh ext.sh > /dev/null 2>&1
sudo apt-get install -y xrdp > /dev/null 2>&1
sudo apt-get install -y xfce4-terminal > /dev/null 2>&1
echo xfce4-session >~/.xsession
sudo service xrdp start > /dev/null 2>&1
if sudo apt-get upgrade &> /dev/null
then
    printf "\n\nUpgrade Completed " >&2
else
    printf "\n\nError Occured " >&2
fi
