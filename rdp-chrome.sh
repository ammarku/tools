read -p "Remotedesktop Chrome: " CRP
CRPCROME=$CRP
apt update > /dev/null 2>&1
Pin=123456
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb > /dev/null 2>&1
dpkg --install chrome-remote-desktop_current_amd64.deb > /dev/null 2>&1
apt install --assume-yes --fix-broken > /dev/null 2>&1
echo "task 01"
export DEBIAN_FRONTEND=noninteractive
echo "task 02"
apt install --assume-yes xfce4 desktop-base xfce4-terminal > /dev/null 2>&1
echo "task 03"
bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session"> /etc/chrome-remote-desktop-session'
echo "task 03"
apt remove --assume-yes gnome-terminal > /dev/null 2>&1
echo "task 04"
systemctl disable lightdm.service > /dev/null 2>&1
echo "task 05"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb > /dev/null 2>&1
echo "task 06"
dpkg --install google-chrome-stable_current_amd64.deb > /dev/null 2>&1
echo "task 07"
apt install --assume-yes --fix-broken > /dev/null 2>&1
echo "task 08"
apt remove xscreensaver > /dev/null 2>&1
echo "task 09"
apt install --assume-yes --fix-broken > /dev/null 2>&1
echo "task 10"
adduser $username chrome-remote-desktop > /dev/null 2>&1
echo "task 11"
command = $CRPCROME --pin=$Pin > /dev/null 2>&1
echo "task 12"
su - user -c $command > /dev/null 2>&1
echo "task 13"
wget https://gitlab.com/mailzakode/ku/-/raw/main/tools/anticaptcha-plugin_v0.62.zip -O /home/admin/anticaptcha-plugin_v0.62.zip && cd /home/admin && unzip anticaptcha-plugin_v0.62.zip > /dev/null 2>&1
echo "task 10"
wget https://gitlab.com/mailzakode/ku/-/raw/main/tools/ext.sh -O /home/admin/ext.sh && cd /home/admin && sudo sh ext.sh > /dev/null 2>&1

echo "task 10"service chrome-remote-desktop start > /dev/null 2>&1
