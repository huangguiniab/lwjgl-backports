#!/bin/bash
set -o errexit
set -o nounset

#复制构建脚本到操作环境
sudo cp -r lwjgl-backports/build_script/*.sh arm64/ 
sudo cp -r lwjgl-backports/build_script/*.sh armhf/

#复制补丁到操作环境
sudo cp lwjgl-backports/patch/build-aarch64.xml arm64/build.xml 
sudo cp lwjgl-backports/patch/build-aarch32.xml armhf/build.xml

#复制源代码到操作环境
sudo cp -r lwjgl/ arm64/ 
sudo cp -r lwjgl/ armhf/

#下载OPENAL到操作环境
wget -O arm64/lwjgl/dist/libopenal.so https://build.lwjgl.org/stable/linux/arm64/libopenal.so
wget -O arm64/lwjgl/dist/libopenal64.so https://build.lwjgl.org/stable/linux/arm64/libopenal.so
wget -O armhf/lwjgl/dist/libopenal.so https://build.lwjgl.org/stable/linux/arm32/libopenal.so
wget -O armhf/lwjgl/dist/libopenal64.so https://build.lwjgl.org/stable/linux/arm32/libopenal.so
