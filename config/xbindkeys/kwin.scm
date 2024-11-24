(xbindkey '(mod4 "d")           "bash ~/bin/run_tiny")
(xbindkey '(mod4 "Return")      "bash ~/bin/run_tiny")
;;小键盘回车
(xbindkey '(mod4 "KP_Enter")    "bash ~/bin/run_tiny")
;;有什么kwin配置抢占了这个键位
(xbindkey '(mod4 "2")           "bash ~/bin/run")
;;桌面菜单
(xbindkey '(mod4 "1")           "bash ~/bin/menu")


;;print安装spectacle后就有默认键位了,不过注意全屏是shift print, 窗口是super print.
;;(xbindkey '("Print") "mkdir ~/show;cd ~/show;scrot")
;;(xbindkey '(alt "Print") "mkdir ~/show;cd ~/show;spectacle -b -a -o ~/show/1.png")
;;(xbindkey '(mod4 "w") "bash ~/bin/compiz/set_random_wallpaper.sh")
