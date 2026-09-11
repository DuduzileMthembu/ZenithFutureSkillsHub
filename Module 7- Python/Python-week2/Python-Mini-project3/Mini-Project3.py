# Workout Countdown Timer Tool

import time
from datetime import datetime

def countdown(seconds):
    while seconds > 0 :
        print("Time Remaining : ", seconds)
        time.sleep(1)
        seconds -= 1
    print("Workout Complete!")

print("Today's Date : ", datetime.now())

countdown(20)