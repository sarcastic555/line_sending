#!/bin/bash

source ../env.sh
birthdayfile="birthdaylist/research.csv"
token=${token_todaitpc}

CRONLOG_PATH="log"
today=`/bin/date +"%Y%m%d"`

. ~/.bashrc
mkdir -p ${CRONLOG_PATH}
date > ${CRONLOG_PATH}/research_${today}.log
python send.py ${birthdayfile} ${token} >> ${CRONLOG_PATH}/todaitpc_${today}.log 2>&1
