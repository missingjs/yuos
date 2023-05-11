#!/bin/bash

self_dir=$(cd $(dirname $0) && pwd)

cd $self_dir

img=pm.img

source ./env.sh || exit

if [ -e $img ]; then
    cmd=N
    read -p "this will remove $img, continue? (y/N) " cmd
    [ "$cmd" == "y" ] || exit 0
    rm $img || exit
fi

set -e

bximage -fd -size=1.44 -q $img

printf "\nPlease launch bochs, then run 'format b:' in DOS\n"

