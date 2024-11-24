;;(xbindkey
;;  '(control "space")
;;  "fcitx-remote -t")
;;这个不可用,因为当每个app独立fcitx状态的时候,切换就不成立

(xbindkey '(mod4 "d") "bash ~/bin/run_tiny")

(xbindkey '(mod4 "Return") "bash ~/bin/run_tiny")

;;小键盘回车
(xbindkey '(mod4 "KP_Enter") "bash ~/bin/run_tiny")

(xbindkey '(mod4 "1") "bash ~/bin/rofi/fullscreen")
;;"gnome-pie -o 536")
;;"synapse")
;;"gnome-do")
;;"slingscold")
;;"bash ~/bin/term")

;;这个写法似乎无效
;;(xbindkey '(shift control "Delete") "ksysguard")

(xbindkey '("Print") "mkdir ~/show;cd ~/show;scrot")

(xbindkey '(alt "Print") "mkdir ~/show;cd ~/show;gnome-screenshot -b -w")

(xbindkey '(mod4 "w") "bash ~/git/compiz_wallpaper_manager/compiz.sh")

;;# Version: 1.8.6
;;#找出特定按键.
;;#xbindkeys -k
;;#xmodmap -pm
;;
;;#养成了不太好的依赖习惯,禁用一段时间.
;;"bash ~/bin/run_tiny"
;;  Mod4 + d
;;"bash ~/bin/term"
;;  Mod4 + 1
;;#"bash ~/bin/web"
;;#  Mod4 + 2
;;##"pkill conky;bash ~/bin/daemons/conky.sh"
;;##  Mod4 + 3
;;##"pkill yabar;yabar -c ~/config/rc/yabar/main.conf"
;;##  Mod4 + 4
;;#"pkill conky;pkill yabar"
;;#  Mod4 + 5
;;
;;#分散开rofi的两个触发,所以如果一个不可用了,至少还有一个备用.
;;#"bash ~/bin/rofi.sh"
;;#  Mod4 + Return
;;
;;#捕捉映射掉cap键,让它无效化.
;;#测试结果:这个办法无效,虽然xbindkeys会捕捉到,但是不会彻底拦截.
;;#对比来说
;;#super+n的情况下,如果不捕捉的话,vim会作为n处理掉,但是捕捉的话,vim就不会拦截了.
;;#"echo 1"
;;#  Caps_Lock
;;
;;#加入这里的原因是fcitx自身切换的时候似乎会影响到capswap,
;;#但是现在(compiz0.8)似乎没有影响,所以禁用一段时间试试.
;;#"python ~/bin/fcitx.py"
;;#  control + space
;;
;;#截屏
;;"mkdir ~/show;cd ~/show;scrot"
;;  Print
;;#"mkdir ~/show;cd ~/show;scrot -ub"
;;"mkdir ~/show;cd ~/show;gnome-screenshot -b -w"
;;  alt + Print
;;
;;#刷壁纸
;;"bash ~/git/compiz_wallpaper_manager/compiz.sh"
;;  Mod4 + w
;;#  Mod4 + Shift + w
;;#switcher
;;#"rofi -config ~/config/rc/rofi/main.conf -show window"
;;#  Mod4 + Shift + w
;;#  Mod4 + w
;;
;;
