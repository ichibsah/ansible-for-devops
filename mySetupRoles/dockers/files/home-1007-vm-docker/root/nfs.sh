sudo mkdir -p /mnt/docker
sudo mount -t nfs -o rw,nconnect=16 10.0.0.131:/docker /mnt/docker

#sudo mount -t nfs -o rw,nconnect=16

# sudo nano /etc/fstab
# # <file system>     <dir>       <type>   <options>   <dump>	<pass>
# 10.10.0.10:/backups /var/backups  nfs      defaults    0       0

# mount /var/backups
# mount 10.10.0.10:/backups

# umount 10.10.0.10:/backups 
# umount /var/backups