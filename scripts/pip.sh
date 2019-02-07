#!/bin/sh
#pip를 설치하기 위한 파일입니다

cd /tmp
curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
python get-pip.py

pip install --upgrade setuptools
pip install pymediainfo
