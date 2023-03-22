#!/bin/bash

case $1 in
plex)
echo "plex restarting ..." 
sudo systemctl restart plexmediaserver 2>&1
sudo systemctl restart nginx 2>&1
echo "plex restarted!!" 
;;
nginx)
echo "nginx restarting ..." 
sudo systemctl restart nginx 2>&1
echo "nginx restarted!!" 
;;
network)
echo "network restarting ..." 
sudo systemctl restart networking.service
echo "network restarted!!" 
;;
dhcp)
echo "dhcp restarting ..." 
sudo systemctl restart isc-dhcp-server.service
echo "dhcp restarted!!" 
;;
bind)
echo "bind!!" ;;
*)
echo "revise ur command" ;;
esac

