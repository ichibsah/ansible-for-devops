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
    --hostname pihole.sawadogo.xyz \
    -e VIRTUAL_HOST="pihole.sawadogo.xyz" \
    -e PROXY_LOCATION="pihole.sawadogo.xyz" \
    -e ServerIP="217.160.100.209" \
    pihole/pihole:latest