
#显示welcome 之后启动的部分
#也就是说,从这里开始,要考虑到任何被输入打断的可能,任何鲁棒不足的,不够稳健的,都需要在这之前等待启动完毕,在这里之后的,都是可以随时pkill,重启的部分,可以随意的被输入打断


#env部分已经抽取掉了
#fcitx-autostart
fcitx5 &

#没有提前启动的理由
if [ -f ~/.wallpaperrc ];then
    bash ~/bin/daemons/mpd.sh
fi

##同上
##bash ~/bin/daemons/volnoti.sh
#bash ~/app/kwin/volnoti-kwin/server.sh 
##左上角菜单
#python ~/app/desktop_menu/desktop_topleft_qt.py &
#全局blur监听
python ~/app/kwin/blur/kwin_auto_blur.py &
#重置配置
#bash ~/config/rc_copy/kwin/all.sh

#export XDG_CURRENT_DESKTOP=KDE
#kglobalaccel5


#手动开kglobal，kde6带来的bug
/usr/lib/kglobalacceld &



##这个东西dolphin和latte-dock都会启动,其中包括了thumbmail功能
##如果它被latte-dock启动了的话,那么thumbnail也会用latte-dock的icon主题,所以需要在这里手动启动
##transmission-qt在latte-dock中的图标不对,应该是因为使用了thumbnail
#kdeinit5
#
#
##启动kde systemsetting中的powerdevil电源管理界面，
##其实平时是没用的，主要用途只是设置一次关闭键盘的电源键
##此外还可以设置10min自动关机之类的，但是我们没session，所以没用
##但是在script选项中填入poweroff似乎可行
#最新kde6中，powerdevil和plasma联动可以设置屏幕亮度
/usr/lib/org_kde_powerdevil&

#noti由latte-dock中的plasma组件提供
#latte-dock &
#bash ~/config/rc_copy/latte/run.sh 
#bash ~/bin/daemons/notifyd.sh

#sleep 1

echo bash ~/config/rc/x/kwin5_appmenu

#bash ~/config/rc/x/kwin5_xdg-desktop-portal

#sleep 1

#因为这里的qdbus似乎在appmenu之前启动会导致appmenu失效
#bash ~/bin/daemons/shortcuts.sh

#开机结束,可以使用快捷键,
#实际上,latte-dock的noti启动前,这里是阻塞的,但是快捷键已经可以使用了
#notify-send Welcome!
#echo kwin welcome $(date) >> ~/del/log/reboot.log

echo bash ~/app/kwin/wallpaper/run.sh &

#重置配置
#sleep 5
#bash ~/config/rc_copy/kwin/all.sh


#pkill feh

#sleep 10
#notify-send Welcome!2
#python ~/app/kwin/wallpaper/main.py

