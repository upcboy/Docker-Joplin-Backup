# Joplin Backup

This sets up joplin on the to sync via webdav then export the file to a specific location
## docker-comose
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
