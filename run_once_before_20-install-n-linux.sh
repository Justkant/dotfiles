#!/bin/sh

if [ ! -d "${HOME}/n" ] ; then
  curl -L https://git.io/n-install | bash
fi
