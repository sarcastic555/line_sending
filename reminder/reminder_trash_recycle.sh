#!/bin/bash

##### env setting for crontab operation
. setting.sh
echo . setting.sh

echo source ../env.sh
source ../env.sh

##### 第2,第4の週のみ実行
##### reminder.pyプログラムを実行
date_of_month=`date +%d`
echo ${date_of_month}
text="資源ごみ捨て"
echo ${text}
if [ ${date_of_month} -ge 8 -a ${date_of_month} -le 14 ] ||
       [ ${date_of_month} -ge 21 -a ${date_of_month} -le 27 ]; then
    echo python reminder.py ${text}
    python reminder.py ${text}
fi


