#!/bin/bash

#策略
#2017-07-25 23:25:05 Tue NZST
#,全局dpi控制太麻烦了,因为不知道影响范围有多大
#方便些的办法是分别对qt 和 gtk 的dpi控制,再分别处理其他独立的x程序,原因在于独立x程序依据情况而定可能不需要调整dpi
#不过,为了适应多个系统,其实应该是依赖于dpi控制的
#并且全局dpi的控制是实时重启程序就生效的

##################################
#X
#xrandr --dpi 128 #当前默认而是80
xrandr --dpi 100 #正好1.25 倍
#获得dpi
#xdpyinfo | grep -B2 resolution

#影响范围
#有效app,qmlterm
#qt系的字体,emerald字体,xfce字体
#所以dpi改变的话,就需要重设阴影了,
#emerald 字体
#但是只影响字体,emerald的图形是不受影响的,所以似乎找不到参数调整emeral图形.大dpi的时候必须要换主题
#注意alt+tab也是emerald处理的,
#此外gtk-win-decro则完全不受影响


#无效范围
#无效app,rofi,firefox
#firefox字体,qt阴影
#firefox的字体则是可以通过gtk环境变量设定dpi
#阴影问题可能是因为用像素写死了,或许应该要改成dpi的单位inch之类的
#gedit 无效,大概整个gtk都无效.不过平时用的gtk也就是firefox和thunderbird,所以独立控制也没问题.如果该要适应多个系统,那么可以写脚本自适应从xrandr读取dpi设定到env
#但是因为因为dpi 只影响firefox的界面,却不影响网页内容,而firefox的界面我们感觉适中,并不需要调整,所以gtk的dpi因此就不需要调整了
#对wine也无效.


########################################
#GTK
#对gedit,firefox有效.奇怪必须要是整数,所以无法用
export GDK_SCALE=1
#似乎只改字体
export GDK_DPI_SCALE=1.25

#####################################
#QT
#dolphin有效,但是似乎字体无效.
export QT_SCREEN_SCALE_FACTORS=1
#这个就字体有效了.但是会导致qterm模糊化.
#这参数或许改加入到dolphin启动之类的地方.
export QT_SCALE_FACTOR=1.0

