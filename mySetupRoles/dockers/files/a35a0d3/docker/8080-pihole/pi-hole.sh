docker pull  pihole/pihole:latest
#
docker run -d \
    --name pihole \
    -p 53:53/tcp -p 53:53/udp \
    -p 8080:80 \
    --restart always \
    -e TZ="Europe/Berlin" \
    -v $(pwd)/docker/etc:/etc/pihole \
    -v $(pwd)/docker/dnsmasq:/etc/dnsmasq.d \
    --dns=1.1.1.1 \
    --hostname pihole.zertiahmef.com \
    -e VIRTUAL_HOST="pihole.zertiahmef.com" \
    -e PROXY_LOCATION="pihole.zertiahmef.com" \
    -e ServerIP="217.160.100.194" \
    pihole/pihole:latest