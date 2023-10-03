# Hacman Dokuwiki Image


## Base Image

The first docker image used is the base image for dokuwiki

  * https://hub.docker.com/r/linuxserver/dokuwiki

Instead of latest we're using `dokuwiki:version-2023-04-04a` in the compose file.
This should be the latest at the time of writing but it's just to make sure the version of plugins match up
Both can be updated via the dokuwiki web configuration afterwards


## Default Configuration

Within `images/defconfig` is the setup for the default configuration
If a configuration is already detected then this image / step is skipped

This removes install.php and sets the default root user up

  * root
  * %Password123


## Hacman Theme

Within `images/theme` is the hacman theme used for the wiki
This includes the branding and CSS


## Plugins

Within `images/doku-plugins` is all the default plugins bundled into the default install.

This includes:

  * markdown

TODO
