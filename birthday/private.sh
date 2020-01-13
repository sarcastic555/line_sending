#!/bin/bash

birthdayfile="birthdaylist/private.csv"
token_private="ROiMAo4EghHcGowoNXvrENFVxr15tVJV15jkCdfEFvS"
CRONLOG_PATH="log"
today=`/bin/date +"%Y%m%d"`

. ~/.bashrc
mkdir -p ${CRONLOG_PATH}
date > ${CRONLOG_PATH}/private_${today}.log
python send.py ${birthdayfile} ${token_private} >> ${CRONLOG_PATH}/private_${today}.log 2>&1
