#!/system/bin/sh

read -p "Username: " username
read -p "Password: " password

echo "Creating User and Setting it up"
useradd -m $username
adduser $username sudo
echo "$username:$password" | sudo chpasswd
sed -i "s/\/bin\/sh/\/bin\/bash/g" /etc/passwd
echo "User Created and Configured"

read -p "Please enter authcode from the given link: " CRP

read -p "Enter a pin more or equal to 6 digits: " Pin

apt update

echo "Installing Chrome Remote Desktop"
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
dpkg --install chrome-remote-desktop_current_amd64.deb
apt install --assume-yes --fix-broken

echo "Installing Desktop Environment"
export DEBIAN_FRONTEND=noninteractive
apt install --assume-yes xfce4 desktop-base xfce4-terminal
bash -c "echo \"exec /etc/X11/Xsession /usr/bin/xfce4-session\" > /etc/chrome-remote-desktop-session"
apt remove --assume-yes gnome-terminal
apt install --assume-yes xscreensaver
systemctl disable lightdm.service

echo "Installing Google Chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg --install google-chrome-stable_current_amd64.deb
apt install --assume-yes --fix-broken

echo "Finalizing"
adduser $username chrome-remote-desktop
command=$"$CRP --pin=$Pin"
su - $username -c '$command'
service chrome-remote-desktop start
echo "Finished Succesfully"