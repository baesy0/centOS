#!/bin/sh
if [[ $EUID -ne 0 ]]; then
	echo "This script must be run as Root" 1>&2
	exit	
fi

yum -y install gnome-tweak-tool
yum -y install gnome-shell-extension-no-hot-corner
# $ gnome-teaks 명령어를 타이핑 후 확장메뉴에서 "no topleft hot corner"를 켭니다
# reboot은 수동으로
