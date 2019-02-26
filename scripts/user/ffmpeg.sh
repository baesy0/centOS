#!/bin/sh
cd /tmp
mkdir /tmp/ffmpeg
cd /tmp/ffmpeg

wget http://johnvansickle.com/ffmpeg/builds/ffmpeg-git-64bit-static.tar.xz

if [ ! -d "/home/$USER/app" ]; then
	mkdir /home/$USER/app
fi

if [ ! -d "/home/$USER/app/ffmpeg" ]; then
	mkdir "/home/$USER/app/ffmpeg"
fi

cd /home/$USER/app/ffmpeg
tar xpvf /tmp/ffmpeg/ffmpeg-git-64bit-static.tar.xz --strip 1
rm -rf /tmp/ffmpeg
