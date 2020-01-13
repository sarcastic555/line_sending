#!/bin/bash

birthdayfile="birthdaylist/research.csv"
token_todaitpc="Yna4qPzI3THbZT9oCaCou4OsmcSJxZiqOhN8awW6xW6"

CRONLOG_PATH="log"
today=`/bin/date +"%Y%m%d"`

. ~/.bashrc
mkdir -p ${CRONLOG_PATH}
date > ${CRONLOG_PATH}/research_${today}.log
python send.py ${birthdayfile} ${token_todaitpc} >> ${CRONLOG_PATH}/todaitpc_${today}.log 2>&1
