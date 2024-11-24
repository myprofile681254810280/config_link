#!/bin/bash
#export INFINALITY_FT="ultimate5"


###########################################
#換到usb之後需要swap提升性能。
#sudo swapon  /dev/disk/by-label/ssdswap 

########################################3
#qt5,dolphin需要这个来加载合适的icon主题
###export XDG_CURRENT_DESKTOP=GNOME #由qt5ct管理

#qtcurve 
#大略记录下,
#pacman -S qt5ct qtcurve qtconfig-qt4
#在qt5ct和qtconfig-qt4中选择qtcurve
export QT_QPA_PLATFORMTHEME=qt6ct

export QT_STYLE_OVERRIDE=kvantum 
#2017-06-20 12:37:50 Tue NZST
#下面这条和qt5ct冲突,要去掉
#export QT_STYLE_OVERRIDE=qtcurve #由qt5ct管理
#export QT_STYLE_OVERRIDE=kvantum #kvantum受qt5ct管理会出问题,所以只能在这里写死,但是同时依然不能关掉qt5ct,否则会丢失图标
#但是开启的话,却会影响到cantata,相当怪异,或者说这两个环境变量,不同程序的读取顺序是不同的吧

#qtcurve对比murrine的问题是,整个frame使用了同样的背景,而无法像arc theme那样根据区域划分背景.
#按照osx的情形来看,blur比较适合的是用作区域的方块,而不是不定型的形状.qtcurve是把blur用作外围frame了.

#murrine尝试
#murrine在gnome3/compiz0.9中工作正常,但是在compiz0.8,我能想到的差别是dconf的支持度不同.
#export GTK_MODULES=rgba
#blacklist
#export GTK_RGBA_APPS=allbut:firefox-bin:gnome-mplayer:totem:soffice:firefox
#nohup /usr/lib/gnome-settings-daemon/gnome-settings-daemon > /dev/null


export TERM=~/bin/term

######################################
#fcitx
export GTK_IM_MODULE=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
