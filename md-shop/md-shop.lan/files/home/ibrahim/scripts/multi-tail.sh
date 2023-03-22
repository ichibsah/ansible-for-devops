#!/bin/bash
#multitail /var/log/syslog
#
case $1 in
nginx)
multitail /var/log/nginx/access.log /var/log/nginx/error.log 2>&1
;;
syslog)
multitail /var/log/syslog 2>&1
;;
*)
multitail /var/log/syslog 2>&1
;;
esac


