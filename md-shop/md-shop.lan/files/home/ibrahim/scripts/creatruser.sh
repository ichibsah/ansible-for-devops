#!/bin/bash
#homeDir="/mnt/Backup/users"
homeDir="/home"
usrShell="/bin/bash"
grps="ssh,users" #comma seperate
#
mkdir -p $homeDir
#
echo "Enter username: "
read username
#echo "sudo useradd -s $usrShell -c "$username" -U $username -G $grps -m -d $homeDir/$username $username"
sudo useradd -s $usrShell -c "$username" -G $grps -m -d $homeDir/$username -U $username
#
mkdir -p $homeDir/$username/.ssh
sudo chmod 700 $homeDir/$username/.ssh -R
sudo chown $username:$username $homeDir/$username -R
id $username
sudo passwd $username
#
#sudo killall -u $username
#sudo userdel -r $username
