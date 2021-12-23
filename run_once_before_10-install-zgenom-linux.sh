#!/bin/sh

FOLDER="${HOME}/.zgenom"

if [ ! -d "$FOLDER" ] ; then
  git clone https://github.com/jandamm/zgenom.git "$FOLDER"
fi
