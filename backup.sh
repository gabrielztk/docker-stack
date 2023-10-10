# cd ~/share/docker-stack/immich      && docker compose stop
cd ~/share/docker-stack/homepage && docker compose stop
cd ~/share/docker-stack/nextcloud && docker compose stop
cd ~/share/docker-stack/portainer && docker compose stop
cd ~/share/docker-stack/syncthing && docker compose stop
cd ~/share/docker-stack/vaultwarden && docker compose stop
cd ~/share/docker-stack/monica && docker compose stop
cd ~/share/docker-stack/speedtest && docker compose stop
cd ~/share/docker-stack/adguard && docker compose stop
cd ~/share/docker-stack/nginx && docker compose stop

cd ~/share/docker-stack/ && sudo zip -r -D -u -9 ~/syncthing/backup/backup.zip .

cd ~/share/docker-stack/nginx && docker compose up -d
cd ~/share/docker-stack/adguard && docker compose up -d
cd ~/share/docker-stack/speedtest && docker compose up -d
cd ~/share/docker-stack/homepage && docker compose up -d
cd ~/share/docker-stack/nextcloud && docker compose up -d
cd ~/share/docker-stack/portainer && docker compose up -d
cd ~/share/docker-stack/syncthing && docker compose up -d
cd ~/share/docker-stack/vaultwarden && docker compose up -d
cd ~/share/docker-stack/monica && docker compose up -d
# cd ~/share/docker-stack/immich      && docker compose up -d

docker image prune -f
