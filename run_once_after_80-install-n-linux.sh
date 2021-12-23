#!/bin/sh

if [ ! -d "${HOME}/n" ] ; then
  curl -L https://git.io/n-install | bash

  export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"

  n latest
  corepack enable
fi
