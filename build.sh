#!/bin/bash

self_dir=$(cd $(dirname $0) && pwd)

cd $self_dir

img=pm.img
task=pmtest2
mount_dir=/mnt/yuos-floppy

source ./env.sh || exit

set -xe

nasm $task.asm -o $task.com

[ -e $mount_dir ] || sudo mkdir -p $mount_dir
sudo mount -o loop $img $mount_dir
sudo cp $task.com $mount_dir/
sudo umount $mount_dir
