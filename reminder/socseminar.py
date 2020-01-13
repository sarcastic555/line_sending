#coding:UTF-8
import requests
import datetime
import random

def main():

# 現在時刻を出力する場合
#    _nowtime=datetime.datetime.today()
#    message =  ('%s' % _nowtime.strftime('%Y/%m/%d %H:%M:%S') )
    url = "https://notify-api.line.me/api/notify"
    token = "VQJ8mUdfRf4nR86Vmo1XQZjsBI58fnVpwdjC26ELaaL" ## 岡部メール送信グループ
    message='明日socゼミがある場合は[メール送信]と入力してください'

    headers = {"Authorization" : "Bearer "+ token}
    payload = {"message" :  message}
    r = requests.post(url ,headers = headers ,params=payload)

## ファイルを送る場合
#    files = {"imageFile": open("test.jpg", "rb")} #バイナリで画像ファイルを開きます。対応している形式はPNG/JPEGです。
#    r = requests.post(url ,headers = headers ,params=payload, files=files)

if __name__ == '__main__':
    main()
