#!/bin/bash
set -o errexit
set -o nounset
set -x
	apt update
	apt install gnupg wget apt-transport-https libx11-dev libxxf86vm-dev libxt-dev libxcursor-dev libxrandr-dev -y
	wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | apt-key add -
	echo "deb https://adoptopenjdk.jfrog.io/adoptopenjdk/deb buster main"  > /etc/apt/sources.list.d/Adoptopenjdk.list
	apt update
	apt install adoptopenjdk-8-hotspot ant gcc g++ -y
	echo All set OK !
