#!/bin/sh
# 이 스크립트는 centOS 7.6에서 소프트웨어를 설치합니다.
# root로 한 번 실행 후 다시 user로 실행해야 합니다.
if [[ $EUID -eq 0 ]]; then
./root/utility.sh
./root/code.sh
./root/djv.sh
./root/mpv.sh
./root/pip.sh
./root/devtools.sh
./root/ffmpeg.sh
./root/handbrake.sh
./root/openimageio.sh
./root/ocio_config.sh
./root/rmHotcorner.sh
./rmbeep.sh
else
# install $USER
./user/trans.sh
./user/ocio_config.sh
./user/pip.sh
./user/gaffer.sh
./user/ffmpeg.sh
./user/blender.sh
# gcc6.x를 이용해서 빌드한다
scl enable devtoolset-6 ./cmake.sh
scl enable devtoolset-6 ./openexr.sh
scl enable devtoolset-6 ./opencolorio.sh
scl enable devtoolset-6 ./alembic.sh
./rmbeep.sh
fi
