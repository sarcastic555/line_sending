#!/bin/bash

birthdayfile="birthdaylist/soccer.csv"
token_soccer="njk8bhD6i8ilQonnPBVDq7BYAmaKlalQAakYH1zJEIH"

CRONLOG_PATH="log"
today=`/bin/date +"%Y%m%d"`

. ~/.bashrc
mkdir -p ${CRONLOG_PATH}
date > ${CRONLOG_PATH}/soccer_${today}.log
python send.py ${birthdayfile} ${token_soccer} >> ${CRONLOG_PATH}/soccer_${today}.log 2>&1
