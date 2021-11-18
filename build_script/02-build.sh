#!/bin/bash
set -o errexit
set -o nounset
set -x
cd /lwjgl
rm platform_build/linux_ant/build.xml
cp /build.xml platform_build/linux_ant/build.xml
ant generate-all
ant compile
ant compile_native
ant jars
cp libs/linux/liblwjgl.so dist/liblwjgl.so
cp libs/linux/liblwjgl.so dist/liblwjgl64.so
cp libs/lwjgl* dist/
cd dist/
jar cvf lwjgl_platform.jar liblwjgl.so liblwjgl64.so libopenal.so libopenal64.so
