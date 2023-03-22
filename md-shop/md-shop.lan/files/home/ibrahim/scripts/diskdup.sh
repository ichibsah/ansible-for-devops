#!/bin/bash
# checking if script is run as root
if [ $(id -u) -ne 0 ]
then 
    echo script is not run as root, exiting...
    exit
#
else
echo "rSync ACC to Prod"
# add n for dryrun
source="/mnt/prod-MediaFiles/"
output="/mnt/vHost-Backup/"
param="-vrumpg --progress --del" #mirror source in destination
param="-vr --progress --remove-source-files" #move source to destination
#rsync -vrumpg --del /mnt/vHost-Backup-old/ /mnt/vHost-Backup/
#rsync -vrumpg $param $source $output

fi
