docker run -d \
--name=WatchYourLAN \
-e TZ=Europe/Berlin \
-e GUIIP=192.168.14.254 \
-e GUIPORT=8840 \
-e IFACE="eno1 enp2s0f0 enp2s0f1" \
-e THEME=darkly \
-v "$(pwd)/wyl:/data" \
--net=host \
--restart always \
aceberg/watchyourlan