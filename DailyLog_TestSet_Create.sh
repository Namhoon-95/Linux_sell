#!/bin/bash

#일자별 TEST.txt 파일을 생성하는 스크립트

#TXT 파일명 변수선언
fileNamePattern=''
month=''
maxDay=''
answer=''


echo -e "\t\t------Test.TXT 만들기------"
echo
read -p "생성할 파일명의 패턴 입력: " fileNamePattern
read -p "몇월인가요? : " month
read -p "${month} 월은 며칠까지 있나요? : " maxDay

#파일명 확인
read -p "${fileNamePattern}${month}-${maxDay}.txt > 출력예시 [y or n] : " answer

#명령 반복문
if [ "$answer" = "y" ]; then

	dayNum=1
	while [ $dayNum -le $maxDay ]; do
	
	dayNumFormat=$(printf "%02d" $dayNum)
    	echo "Teat file" >> "${fileNamePattern}${month}-${dayNumFormat}.txt"
	dayNum=$((dayNum + 1))

	done

else
	echo "실행취소"
fi
