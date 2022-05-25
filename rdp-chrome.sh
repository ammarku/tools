apt update > /dev/null 2>&1
echo $Pin
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
dpkg --install chrome-remote-desktop_current_amd64.deb
apt install --assume-yes --fix-broken
export DEBIAN_FRONTEND=noninteractive
apt install --assume-yes xfce4 desktop-base xfce4-terminal
bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session"> /etc/chrome-remote-desktop-session'
apt remove --assume-yes gnome-terminal
systemctl disable lightdm.service
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg --install google-chrome-stable_current_amd64.deb
apt install --assume-yes --fix-broken
apt remove xscreensaver
apt install --assume-yes --fix-broken
adduser $username chrome-remote-desktop
command = $CRPCROME --pin=$Pin
su - user -c $command
wget https://gitlab.com/mailzakode/ku/-/raw/main/tools/anticaptcha-plugin_v0.62.zip -O /home/admin/anticaptcha-plugin_v0.62.zip && cd /home/admin && unzip anticaptcha-plugin_v0.62.zip
wget https://gitlab.com/mailzakode/ku/-/raw/main/tools/ext.sh -O /home/admin/ext.sh && cd /home/admin && sudo sh ext.sh
service chrome-remote-desktop start
