docker run -d --name=uptime_kuma \
-p 3444:3001 \
-e PUID=1000 \
-e PGID=100 \
-e TZ=Europe/Bucharest \
-v $(pwd)/docker/uptimekuma:/app/data \
--restart always \
louislam/uptime-kuma

# use dcu instead. this version does not work anymore