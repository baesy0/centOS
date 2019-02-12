#!/bin/sh
if [ ! -d "/home/$USER/app" ]; then
	mkdir /home/$USER/app
fi

#OpenEXR 소스코드 다운로드
cd /home/$USER/app
wget https://github.com/openexr/openexr/archive/v2.3.0.tar.gz
tar -zxvf v2.3.0.tar.gz
cd openexr-2.3.0

#IlmBase 컴파일
cd ~/app/openexr-2.3.0/IlmBase
./bootstrap
./configure --prefix=$HOME/app/IlmBase
make
make install
cd ../OpenEXR
./bootstrap
./configure --prefix="$HOME/app/openexr" --with-ilmbase-prefix="$HOME/app/IlmBase"
make
make install

#prefix 경로확인
#~/app/openexr 경로에 bin, include, lib, share경로가 생기는 것 확인.
