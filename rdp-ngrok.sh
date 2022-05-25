apt update > /dev/null 2>&1
#apt install sudo -y
#sudo adduser user --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
#rm -rf * > /dev/null 2>&1
#echo "Unduh ngrok"
wget -O ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok.zip > /dev/null 2>&1
read -p "Paste Ngrok Authtoken: " TOKEN
./ngrok authtoken $TOKEN > /dev/null 2>&1
./ngrok tcp 3389 > /dev/null 2>&1
#sudo apt update
clear
echo "===================================="
echo "Install XFCE"
echo "===================================="
sudo apt install --assume-yes xfce4 desktop-base xfce4-terminal > /dev/null 2>&1
echo "=======25%"
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > /dev/null 2>&1
sudo dpkg --install google-chrome-stable_current_amd64.deb > /dev/null 2>&1
sudo apt remove xscreensaver
sudo apt install --assume-yes --fix-broken
sudo wget https://gitlab.com/mailzakode/ku/-/raw/main/tools/anticaptcha-plugin_v0.62.zip -O /home/user/anticaptcha-plugin_v0.62.zip && cd /home/user && unzip anticaptcha-plugin_v0.62.zip
sudo wget https://gitlab.com/mailzakode/ku/-/raw/main/tools/ext.sh && sudo sh ext.sh
echo "=============50%"
sudo apt-get install -y xrdp > /dev/null 2>&1
sudo apt-get install -y xfce4-terminal
echo "=================70%"
echo xfce4-session >~/.xsession
echo "=====================90%"
sudo service xrdp start
clear
