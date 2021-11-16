# Import library
import os
import time
import sys

# delay for next interaction
x = 5
# get process ID 
pid = os.getpid()
# open pid file and write ID in file
file = open('pid', 'w')
file.write(f"{pid}")
# close pid file
file.close()
# loop for print "2: I am alive"
for i in range(3):
    print("2: I am alive")
    # run for x(5) seconds
    time.sleep(x)
# print last message
print("2: I gonna die now, bye")