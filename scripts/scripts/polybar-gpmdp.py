import time
import json
from os.path import *
import os


filename = expanduser("~/.config/Google Play Music Desktop Player/json_store/playback.json")

old_time = 0
while True:
    if os.stat(filename).st_mtime == old_time:
        time.sleep(0.2)
        continue
    old_time = os.stat(filename).st_mtime 
    if isfile(filename):
        with open(filename,'r') as i:
            j = json.loads(i.read())
            if j['song']['artist'] == None:
                continue
            icon = "▷" if j['playing'] else ''
            print(icon,j['song']['artist'],' - ',j['song']['title'])


