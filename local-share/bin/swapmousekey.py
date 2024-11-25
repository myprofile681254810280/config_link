"""
xinput list
n=8
echo $n
#xinput list-props 9
#逻辑鼠标似乎是ID 10 ，交换它的左右键
#xinput set-button-map 11 1 2 3
xinput set-button-map $n 3 3 1
"""
import subprocess
import re

def fun(s):
    for line in subprocess.check_output(['xinput','list']).split(b'\n'):
        if s in line:
            i=re.findall(b'id=(\\d+)',line)[0].decode()
            cmd=f'xinput set-button-map {i} 3 3 1'.split()
            print(s,i)
            subprocess.call(cmd)
            return
fun(b'USB Optical')
fun(b'Logitech Wireless Mouse')

