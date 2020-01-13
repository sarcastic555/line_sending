#!/bin/bash

source ../env.sh
birthdayfile="birthdaylist/soccer.csv"
token=${token_soccer}

CRONLOG_PATH="log"
today=`/bin/date +"%Y%m%d"`

. ~/.bashrc
mkdir -p ${CRONLOG_PATH}
date > ${CRONLOG_PATH}/soccer_${today}.log
python send.py ${birthdayfile} ${token} >> ${CRONLOG_PATH}/soccer_${today}.log 2>&1
