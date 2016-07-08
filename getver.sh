#!/bin/bash

SCRIPTDIR="$(dirname "$0")"
PKGDIR=$SCRIPTDIR

for d in $PKGDIR/*
do
  [ -d "$d" ] || continue
  echo "$(basename "$d")": $(grep VERSION "$d/$(basename $d).mk" | head -n1 | cut -f2 -d=)
done
