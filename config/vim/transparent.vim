set nocompatible              " be iMproved, required
filetype off                  " required

"2017-03-18 02:11:06 Sat NZDT
"关闭airline,因为用了奇怪的utf8字符后,qml下下划线断裂
"虽然说airline可能用了奇怪的utf8字符,但是这个问题本质上来说是属于qml的
"而qml能否处理好它,主要看lxqt下的qterminal,至今还没成熟
"所以这个问题大概是解决不了的了
"而airline的方针,应该是一定会使用utf8的,所有我们只能关掉他了,反正平时也不怎么用到
"
"不过改起来还是很麻烦,还是暂且用airline吧
"不过要改的话,最好能手动把黑色和白色主题区分开,vim自身的黑白主题色机制很不可靠
if $VIMTHEME=="AIRLINE"
    let enable_airline=1
else
    let enable_airline=0
endif

"无效,需要其他办法来按文件类型激活plugin
"autocmd FileType python let enable_airline=1

"插件
source ~/.config/vim/plugins.vim

source ~/.config/vim/basic.vim

"自动加载
for f in split(glob('~/.config/vim/autoload/*.vim'), '\n')
    exe 'source' f
endfor

"自动加载
for f in split(glob('~/.config/vim/transparent/*.vim'), '\n')
    exe 'source' f
endfor

"按照文件类型的特殊设定,需要后置.
for f in split(glob('~/.config/vim/filetype/*.vim'), '\n')
    exe 'source' f
endfor
