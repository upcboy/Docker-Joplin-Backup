# Joplin Backup

This sets up joplin on the to sync via webdav then export the file to a specific location

after the export the container will stop I have set a cron job on my docker host to start this once per day

#### crontab

``
1 0 * * * cd /root/joplin_backup && /usr/local/bin/docker-compose up && /usr/local/bin/docker-compose down
``

#### docker-comose
```
version: '3'
services:
  backup:
    build: .
    container_name: joplin_bak
    volumes:
      - /freenas:/freenas
      - vol:/root/.config/joplin
    environment:
      - URL=URL
      - USER=USER
      - PASSWORD=PASSWORD
      - LOCATION=BACKUP_LOCATION
volumes:
  vol:
```
