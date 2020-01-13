#!/bin/bash

source ../env.sh
birthdayfile="birthdaylist/private.csv"
token=${token_private}
CRONLOG_PATH="log"
today=`/bin/date +"%Y%m%d"`

. ~/.bashrc
mkdir -p ${CRONLOG_PATH}
date > ${CRONLOG_PATH}/private_${today}.log
python send.py ${birthdayfile} ${token} >> ${CRONLOG_PATH}/private_${today}.log 2>&1
