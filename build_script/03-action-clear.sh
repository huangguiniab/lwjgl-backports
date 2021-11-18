#!/bin/bash
set -o errexit
set -o nounset

#从arm64复制所有纯java库
sudo mkdir dist
sudo cp arm64/lwjgl/dist/lwjgl.jar dist/
sudo cp arm64/lwjgl/dist/lwjgl_test.jar dist/
sudo cp arm64/lwjgl/dist/lwjgl_util.jar dist/
sudo cp arm64/lwjgl/dist/lwjgl_util_applet.jar dist/

#重命名与复制本地库
#arm64
sudo mv arm64/lwjgl/dist/liblwjgl64.so arm64/lwjgl/dist/liblwjgl_arm64.so
sudo mv arm64/lwjgl/dist/libopenal.so arm64/lwjgl/dist/libopenal_arm64.so

sudo cp arm64/lwjgl/dist/liblwjgl_arm64.so dist/
sudo cp arm64/lwjgl/dist/libopenal_arm64.so dist/

#armhf
sudo mv armhf/lwjgl/dist/liblwjgl.so armhf/lwjgl/dist/liblwjgl_armhf.so
sudo mv armhf/lwjgl/dist/libopenal.so armhf/lwjgl/dist/libopenal_armhf.so

sudo cp armhf/lwjgl/dist/liblwjgl_armhf.so dist/
sudo cp armhf/lwjgl/dist/libopenal_armhf.so dist/
