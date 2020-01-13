#coding:UTF-8
import requests
import datetime
from pytz import timezone
import random
import pandas as pd
import time
import sys

def main():

# 現在時刻を出力する場合
#    _nowtime=datetime.datetime.today()
#    message =  ('%s' % _nowtime.strftime('%Y/%m/%d %H:%M:%S') )
    url = "https://notify-api.line.me/api/notify"
    token = sys.argv[2]
    headers = {"Authorization" : "Bearer "+ token}

    inputfile=sys.argv[1]
    df = pd.read_csv(inputfile,header=None)
    df.columns=['birthday','name']
    _nowtime=datetime.datetime.now(timezone('Asia/Tokyo'))
    todaymonth=_nowtime.month
    todayday=_nowtime.day
    print('今日は%d月%d日です' % (todaymonth,todayday))
    for i in range(len(df)):

        time.sleep(0.5)
        targetbirthday=datetime.datetime.strptime(df.at[i,'birthday'],"%Y/%m/%d")
        targetname=df.at[i,'name']
        #print(targetbirthday)
        #print(targetname)

        if (targetbirthday.month==todaymonth and targetbirthday.day==todayday):
            message='今日は%sさんの誕生日です。盛大にお祝いしましょう!' % targetname
            print(message)
            payload = {"message" :  message} 
            r = requests.post(url ,headers = headers ,params=payload) 
## textのリストの中からランダムでmessageを取得
"""    message =  text[random.randrange(0,len(text))]
    

    payload = {"message" :  message}
    r = requests.post(url ,headers = headers ,params=payload)
"""
## ファイルを送る場合
#    files = {"imageFile": open("test.jpg", "rb")} #バイナリで画像ファイルを開きます。対応している形式はPNG/JPEGです。
#    r = requests.post(url ,headers = headers ,params=payload, files=files)

if __name__ == '__main__':
    main()
