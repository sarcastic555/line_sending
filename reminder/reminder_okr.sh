#!/bin/bash

##### env setting for crontab operation
. setting.sh
echo . setting.sh

source ../env.sh
##### reminder.pyプログラムを実行
text="OKR共有"
python reminder.py ${text}


