sudo ufw reset
#
sudo ufw allow from 192.168.14.0/24 to any port 22
sudo ufw allow http
sudo ufw allow https
sudo ufw allow dns
#sudo ufw allow 8080/tcp
#sudo ufw allow 8181/tcp
#
#ssh via WAN from my-pc
sudo ufw allow in on enp4s0 from 192.168.14.6 to any port 22
#allow all on lan from any
sudo ufw allow from 192.168.14.0/24 to any
sudo ufw allow in on enp2s0 to any
#
#allow ssh on wan from my-pc
sudo ufw allow in on enp4s0 from 192.168.14.6 to any port 22
#allow xrdp on wan from my-pc
sudo ufw allow in on enp4s0 from 192.168.14.6 to any port 3389
#plex rules from wan
sudo ufw allow from 192.168.0.0/24 to any port 32400
sudo ufw allow from 192.168.0.0/24 to any port 3005
sudo ufw allow from 192.168.0.0/24 to any port 8324
sudo ufw allow from 192.168.0.0/24 to any port 32469
sudo ufw allow from 192.168.0.0/24 to any port 1900 #udp
sudo ufw allow from 192.168.0.0/24 to any port 5353 #udp
sudo ufw allow from 192.168.0.0/24 to any port 32410:32414 #udp
#
sudo ufw deny from 192.168.0.0/24 to any
sudo ufw deny in on enp4s0 to any
#
sudo ufw enable
#
sudo ufw status numbered
