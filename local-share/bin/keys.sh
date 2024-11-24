#!/bin/bash

###############################################
#找出按键号码
#xev
#关掉numlock
#xmodmap -e 'keycode 77 = NoSymbol'
#无用,会打乱其他配置

###########################################
#更多配置见/usr/share/X11
#/usr/share/X11/xkb/rules/base.xml|evdev.xml中有option说明
#这两个文件内容似乎是完全一样的,可能看base.xml就足够了
#不过有用的东西也不是很多的样子

setxkbmap -option 
#保留caps的原因是有的时候caps会奇怪的亮起，需要保留它来回复
#不过现在似乎很少见到这种情况了
#2018-01-29 19:27:24 Mon CST
#caps奇怪亮起很可能是因为触发了fcitx的快捷键
#setxkbmap -option "caps:swapescape"
setxkbmap -option "caps:escape"
#setxkbmap -option "ctrl:swapcaps"
#setxkbmap -model "hhk"
#http://hack.org/mc/writings/xkb.html

#不過好像還是有間歇性的問題,恩,在切換rime輸入法的時候,會出現問題
#setxkbmap -option "caps:swapescape"


#mouse key
#shift numlock激活,用numpad控制
#setxkbmap -option keypad:pointerkeys

#swap_alt_win
#swap_brackets
#swap_lalt_lctl
#swap_lwin_lctl

#无论numlock,数字键始终输入数字
#setxkbmap -option "numpad:mac"
#把numlock的led用作显示layout
#具体并不知道有什么用,但是可以把无用的led关掉 
#setxkbmap -option "grp_led:num"
