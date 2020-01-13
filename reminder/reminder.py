# coding: utf-8
import requests
import os
import sys

url = "https://notify-api.line.me/api/notify"
headers = {"Authorization" : "Bearer "+ os.environ['TOKEN_GROUND']}
message=sys.argv[1]
payload = {"message" :  message}
r = requests.post(url ,headers = headers ,params=payload)
