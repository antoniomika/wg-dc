#!/bin/bash

docker compose up -d

while ! docker logs wireguard 2>&1 | grep -q "done"; do
    sleep 1
done

echo "From host"
curl ip-api.com

echo "From wg container"
docker exec -it wireguard curl ip-api.com

echo "From other container using wg network"
docker run -it --rm --net container:wireguard curlimages/curl ip-api.com

echo "From other container not using wg network"
docker run -it --rm curlimages/curl ip-api.com
