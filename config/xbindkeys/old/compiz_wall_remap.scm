;;重新映射compiz wall的按键,做成两份
;;这个东西出问题的地方在于
;;脚本中必须要加入sleep 0.1才有效,然后不能连按,所以没法用
(xbindkey '(control alt "h") "bash ~/bin/simulate_keypress/ctrl_alt.sh Left")
(xbindkey '(control alt "j") "bash ~/bin/simulate_keypress/ctrl_alt.sh Down")
(xbindkey '(control alt "k") "bash ~/bin/simulate_keypress/ctrl_alt.sh Up")
(xbindkey '(control alt "l") "bash ~/bin/simulate_keypress/ctrl_alt.sh Right")
