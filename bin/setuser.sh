#!/bin/sh

zenity --text-info \
--filename=$FILE \
--checkbox="I read and accept the terms."

zenity --forms --title="id" \
--add-entry="id" \

zenity --forms --title="name eng" \
--add-entry="영문이름"

zenity --forms --title="name kor" \
--add-entry="한글 이름"

zenity --forms --title="E-mail" \
--add-entry="이메일(E-mail)"

zenity --forms --title="Select Part" \
--text="팀(부서)를 선택해주세요" rnd, art \
