# cd ~/docker/immich      && docker compose stop
cd ~/docker/homepage    && docker compose stop
cd ~/docker/nextcloud   && docker compose stop
cd ~/docker/portainer   && docker compose stop
cd ~/docker/syncthing   && docker compose stop
cd ~/docker/vaultwarden && docker compose stop
cd ~/docker/monica      && docker compose stop
cd ~/docker/speedtest   && docker compose stop
cd ~/docker/adguard     && docker compose stop
cd ~/docker/nginx       && docker compose stop

cd ~/docker/ && sudo zip -r -D -u -9 ~/syncthing/backup/backup.zip .

cd ~/docker/nginx       && docker compose up -d
cd ~/docker/adguard     && docker compose up -d
cd ~/docker/speedtest   && docker compose up -d
cd ~/docker/homepage    && docker compose up -d
cd ~/docker/nextcloud   && docker compose up -d
cd ~/docker/portainer   && docker compose up -d
cd ~/docker/syncthing   && docker compose up -d 
cd ~/docker/vaultwarden && docker compose up -d
cd ~/docker/monica      && docker compose up -d
# cd ~/docker/immich      && docker compose up -d

docker image prune -f
