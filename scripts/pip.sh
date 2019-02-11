#/bin/sh
#pip를 설치하기 위한 파일입니다

cd /tmp
curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
python get-pip.py

#pip install --upgrade setuptools
pip install pymediainfo
pip install --user numpy
pip install --user Cython

#Excel parser
  pip install --user openpyxl
  pip install --user xlsxwriter
  pip install --user xlrd
  pip install --user xlwt
  pip install --user xlutils
  pip install --user pillow
