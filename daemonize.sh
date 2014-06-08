#!/usr/bin/env bash

if [ -z "$1" ] ; then
    echo "Usage: $0 <command> <args>"
    exit 1
fi

while true ; do
    "$@" &
    PID="$!"
    wait "$PID"
done
