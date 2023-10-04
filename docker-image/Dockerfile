# syntax=docker/dockerfile:1

# Base image of dokuwiki
FROM ghcr.io/linuxserver/dokuwiki:version-2023-04-04a

# TODO setup default config if needed

# copy local files
COPY config/test1.txt /config/test1.txt

# ports and volumes
EXPOSE 80 443
VOLUME /config
