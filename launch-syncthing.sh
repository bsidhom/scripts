#!/usr/bin/env bash

if [ -z "$(pgrep -u ""$USER"" '^syncthing$')" ] ; then
    echo "daemonizing syncthing..."
    screen -dmS syncthing "$HOME/bin/daemonize.sh" syncthing
    echo "syncthing launched"
else
    echo "syncthing daemon already running"
fi
