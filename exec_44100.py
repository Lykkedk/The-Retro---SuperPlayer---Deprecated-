from subprocess import *
import time

from websocket import create_connection
ws = create_connection("ws://127.0.0.1:3011")

ws.send("setconfigname:/home/tc/DSP_Engine/filters/null_44100.yml")
ws.send("reload")
