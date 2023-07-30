#!/usr/bin/bash

for d in */ ; do
    [ -L "${d%/}" ] && continue
    cd "$d"
    makepkg -f
    mv *.pkg.* ../../packages/
done