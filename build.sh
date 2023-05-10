#!/bin/bash

self_dir=$(cd $(dirname $0) && pwd)

cd $self_dir

source ./env.sh || exit

set -xe

nasm boot.asm -o boot.bin

[ -e a.img ] && rm a.img

bximage -fd -size=1.44 -q a.img

dd if=boot.bin of=a.img bs=512 count=1 conv=notrunc

