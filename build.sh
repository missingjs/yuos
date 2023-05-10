#!/bin/bash

self_dir=$(cd $(dirname $0) && pwd)

cd $self_dir

img=pm.img

source ./env.sh || exit

set -xe

#nasm boot.asm -o boot.bin
#nasm pmtest1.asm -o pmtest1.bin

[ -e $img ] || bximage -fd -size=1.44 -q $img

#dd if=boot.bin of=a.img bs=512 count=1 conv=notrunc
#dd if=pmtest1.bin of=$img bs=512 count=1 conv=notrunc

