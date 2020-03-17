#!/bin/bash

##### env setting for crontab operation
. setting.sh
echo . setting.sh
source ../env.sh
echo source ../env.sh

##### 翌日が1~5日の場合はreminder.pyプログラムを実行する
if [ $(uname) == 'Darwin' ]; then
    test `date -v +1d +"\%d"` -le 5 && python reminder.py
elif [ $(uname) == 'Linux' ]; then
    test `date -d "1 day" +"%d"` -le 5 && python reminder.py
fi

