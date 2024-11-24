set nocompatible              " be iMproved, required
filetype off                  " required

let enable_airline=1
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
for f in split(glob('~/.config/vim/light/*.vim'), '\n')
    exe 'source' f
endfor

"按照文件类型的特殊设定,需要后置.
for f in split(glob('~/.config/vim/filetype/*.vim'), '\n')
    exe 'source' f
endfor


