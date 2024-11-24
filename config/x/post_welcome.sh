
notify-send Welcome!

#显示welcome 之后启动的部分
#也就是说,从这里开始,要考虑到任何被输入打断的可能,任何鲁棒不足的,不够稳健的,都需要在这之前等待启动完毕,在这里之后的,都是可以随时pkill,重启的部分,可以随意的被输入打断

#xbindkey在这里加入,因此不必担心在这之前的任何被它打断
bash ~/bin/daemons/shortcuts.sh &

#env部分已经抽取掉了
fcitx-autostart

#没有提前启动的理由
if [ -f ~/.wallpaperrc ];then
    bash ~/bin/daemons/mpd.sh
fi

#同上
bash ~/bin/daemons/volnoti.sh

#panel,这个是阻塞的
#python ~/git/panel/main.py
#~/bin/compiz/panel
#这个似乎会影响x窗口事件,对最大化有阻碍?
