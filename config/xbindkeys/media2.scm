
(xbindkey '(mod4 "m") "pamixer -t")
;;(xbindkey '(mod4 Next) "bash ~/bin/vol_dec.sh")
;;(xbindkey '(mod4 Prior) "bash ~/bin/vol_inc.sh")
;;(xbindkey '(mod4 minus) "bash ~/bin/vol_dec.sh")
;;(xbindkey '(mod4 equal) "bash ~/bin/vol_inc.sh")

(xbindkey '(mod4 period) "pamixer -u;pamixer -i 1;")
(xbindkey '(mod4 comma) "pamixer -u;pamixer -d 1;")

;;(xbindkey '(XF86AudioMute) "~/bin/vol_mute")
;;(xbindkey '(XF86AudioLowerVolume) "bash ~/bin/vol_dec.sh")
;;(xbindkey '(XF86AudioRaiseVolume) "bash ~/bin/vol_inc.sh")


;;(xbindkey '(XF86AudioPlay) "bash ~/app/mpd/toggle.sh #mpd-sc mpc toggle;#~/bin/mpd_pause")
;;(xbindkey '(XF86Calculator) "mpc next;mpc play")

;;(xbindkey '(XF86HomePage) "bash ~/bin/web")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;mpc相关
;;(xbindkey '(mod4 "n") "mpc next")

;;(xbindkey '(mod4 "p") "bash ~/app/mpd/toggle.sh #mpd-sc mpc toggle;#~/bin/mpd_pause")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;这里设定绑定了复杂的组合键,
;;原因在于为了避免误触,因为误触之后要修正回来很麻烦
;;次要来说,本身用到的频率也不高
;;但是放在rofi那里并不行,rofi误触的几率应该比这种复杂组合键更高
;;(xbindkey '(mod4 shift control "d") "bash ~/app/mpd/dislike.sh")

;;
;;#mpd
;;"mpc next"
;;  Mod4 + n
;;#原本似乎mpd事件可以被notify-send体系监听的,但是对我来说,只有toggle有必要显示,
;;#所以这里独立用一个mpd toggle脚本发送notify-send的消息,而mpd整体就不坚挺了.
;;"bash ~/git/mpd-script/toggle.sh #mpd-sc mpc toggle;#~/bin/mpd_pause"
;;  Mod4 + p
;;"bash ~/git/mpd-script/dislike.sh"
;;  Mod4 + shift + control + d
;;
;;#vol
;;"~/bin/vol_mute"
;;  Mod4 + m
;;#"bash ~/bin/vol_dec.sh"
;;#  Mod4 + Prior
;;#"bash ~/bin/vol_dec.sh"
;;#
