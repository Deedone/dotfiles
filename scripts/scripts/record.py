#!/usr/bin/python3 
import re
from subprocess import Popen, PIPE
from time import gmtime, strftime







winfo = Popen(["xwininfo"], stdout=PIPE)
out, err = winfo.communicate()


winfo.wait()
out = out.decode("utf-8")


x = re.search("Absolute upper-left X:  (\d+)",out).group(1)
y = re.search("Absolute upper-left Y:  (\d+)",out).group(1)

w = re.search("Width: (\d+)",out).group(1)
h = re.search("Height: (\d+)",out).group(1)
print(x,y,w,h)

dmenu = Popen(["dmenu","-p","Duration:"],stdout=PIPE, stdin=PIPE)
out, err = dmenu.communicate("5\n10\n15\n20\n30\n45\n60".encode())
out = out.decode("utf-8")[:-1]
print(out[:-1])
print(["byzanz-record","-d",out,"-x",str(x),"-y",str(y),"-w",str(w),"-h",str(h),strftime("%m-%d %H:%M:%S")+".gif"])
aa = Popen(["byzanz-record","-d",out,"-x",str(x),"-y",str(y),"-w",str(w),"-h",str(h),"/home/ddone/Images/Gifs/"+strftime("%m-%d %H:%M:%S")+".gif"])
aa.wait()





