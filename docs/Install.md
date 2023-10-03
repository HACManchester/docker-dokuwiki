# Dokuwiki Docker Install

## Download the compose file

```sh
# Create a directory for the compose file
mkdir -p /root/docker/compose-files
cd /root/docker/compose-files

# Next download a copy of `docker-compose.yml` into that directory
wget https://raw.githubusercontent.com/HACManchester/docker-dokuwiki/master/docker-compose.yml
```

## Configuration

Set the destination directory for the dokuwiki files
```yaml
    volumes:
      - /root/docker/appdata/dokuwiki/config:/config
```

Set the network ports that will be exposed on the host
```yaml
    ports:
      - 8000:80
      - 4443:443
```


## Install

Bring up the docker container
```sh
docker compose -f ./docker-compose.yml up
```

## Access URL

Now the wiki should be visible on

  * http://192.168.111.65:8000/start

Default Login (this needs to be changed)

  * root
  * %Password123
