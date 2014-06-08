#!/bin/bash
pushd "$HOME/opt" >/dev/null
find . -mindepth 1 -maxdepth 1 -follow -type f -exec rm {} +
