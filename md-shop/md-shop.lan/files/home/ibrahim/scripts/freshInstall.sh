apt update
apt install aptitude -y
aptitude upgrade
aptitude install cifs-utils -y
aptitude install rsync -y
bash ./plex/aptFilebot.sh
bash ./sleepy.sh
aptitude install locate -y
aptitude install terminator -y
aptitude install git -y
aptitude install ssh -y
echo deb https://downloads.plex.tv/repo/deb public main | sudo tee /etc/apt/sources.list.d/plexmediaserver.list
wget https://downloads.plex.tv/plex-keys/PlexSign.key
sudo apt-key add PlexSign.key
aptitude install ffmpeg -y
aptitude install libavcodec-extra x264 -y
aptitude install libavcodec-extra -y
aptitude install xfce4 xfce4-goodies xorg dbus-x11 x11-xserver-utils -y
aptitude install xrdp -y
sudo adduser xrdp ssl-cert  
