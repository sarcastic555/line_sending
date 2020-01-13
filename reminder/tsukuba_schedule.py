#coding:UTF-8
import requests
import datetime
import random

def main():

# 現在時刻を出力する場合
#    _nowtime=datetime.datetime.today()
#    message =  ('%s' % _nowtime.strftime('%Y/%m/%d %H:%M:%S') )
    url = "https://notify-api.line.me/api/notify"
    token = os.environ["token_todaitpc"]
    text=["お疲れ様です。来週の予定はどうですか。", 
          "みなさん来週のスケジュールはどんな感じ？",
          "来週つくばにいける日はありますか？",
          "こんにちは。来週の予定を教えてもらえますか？",
          "大変お疲れ様です。来週のスケジュールを教えてください。",
          "今週もお疲れ様です。来週の都合つく日を教えてもらえますか？",
          "来週のつくばの日程を決めたいので都合を教えてもらえますか。",
          "みんな来週のスケジュール教えて!"]

## textのリストの中からランダムでmessageを取得
    message =  text[random.randrange(0,len(text))]

    headers = {"Authorization" : "Bearer "+ token}
    payload = {"message" :  message}
    r = requests.post(url ,headers = headers ,params=payload)

## ファイルを送る場合
#    files = {"imageFile": open("test.jpg", "rb")} #バイナリで画像ファイルを開きます。対応している形式はPNG/JPEGです。
#    r = requests.post(url ,headers = headers ,params=payload, files=files)

if __name__ == '__main__':
    main()
