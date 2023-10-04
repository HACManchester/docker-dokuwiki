#!/bin/sh

# Setup the config volume on the first run
if [ ! -f /config/dokuwiki/.firstrun ]
then
    echo "Hacman-dokuwiki: Setting up /config"
    echo "" >> /config/dokuwiki/.firstrun

    # TODO
    cp /init /config/test-init

fi

# kick off the upstream command:
exec /init "$@"
