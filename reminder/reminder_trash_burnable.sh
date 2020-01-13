#!/bin/bash

##### env setting for crontab operation
. setting.sh
echo . setting.sh

source ../env.sh
##### reminder.pyプログラムを実行
text="可燃ゴミ捨て"
python reminder.py ${text}
