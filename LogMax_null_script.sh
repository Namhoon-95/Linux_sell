#!/bin/bash

#for f in /data/postgres/data/log/postgresql-*.log ; do  >>> 원본
for f in /data/postgres/data/log/postgresql-* ; do

    # basename 명령어를 사용하여 파일명만 추출
    FILE_NAME=$(basename $f)
    
    # 해당 파일의 크기만 변수저장
    FILE_SIZE=$(ls -al "$f" | awk '{print $5}')
    
    # 파일크기가 300이 넘으면 조건문 실행
    if [ "$FILE_SIZE" -gt 300 ] ; then

	# 300 용량이 초과된 파일 null 처리
        cat /dev/null > $f
	echo "File : $FILE_NAME null done."          
    fi
done
