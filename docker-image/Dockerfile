# syntax=docker/dockerfile:1

# Base image of dokuwiki
FROM ghcr.io/linuxserver/dokuwiki:version-2023-04-04a

# TODO setup default config if needed

# copy files into docker image at build time
COPY dokuwiki-custom /dokuwiki-custom

RUN \
  chmod +x /dokuwiki-custom/start.sh


# TODO I think I need to specify an entrypoint which runs a script then calls the base entrypoint
# maybe check if first run has taken place

ENTRYPOINT ["/dokuwiki-custom/start.sh"]
