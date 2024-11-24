"2016-11-21 20:39:30 Mon NZDT
"这里记录因为存在于pacman,而可以排除的plugin
"用pacman/apt等管理的好处是,可以统一控制升级之类的问题
"坏处是,跨系统,以及缺乏admin权限的时候,会缺失plugin,需要至少再补回这里的plugin
"此外,可能这里提供的版本不够新?不过pacman的版本应该还是比较激进的
"2018-07-17 05:30:07 Tue CST
"但是pacman提供的都是很少很少更新的插件,
"更新频繁并且需要编译的ycm这里却没有

"sudo pacman -S vim-taglist vim-ctrlp vim-nerdtree vim-syntastic vim-nerdcommenter vim-fugitive vim-systemd vim-airline vim-airline-themes

Plugin 'scrooloose/nerdtree'            "F3 
Plugin 'taglist.vim'                    "F7 ctags插件
Plugin 'ctrlpvim/ctrlp.vim'             " Ctrl+P 快速文件查找
Plugin 'scrooloose/syntastic'           "已知的用处是检查代码错误
Plugin 'scrooloose/nerdcommenter'       "代码注释,没怎么用过
Plugin 'tpope/vim-fugitive'             "F9 git

Plugin 'airblade/vim-gitgutter'         "显示git diff


"从aur安装
Plugin 'Valloric/YouCompleteMe'         "代码补全

"如果系统安装了airline,vundle再次添加airline的时候,会导致错误
if enable_airline
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
endif 

"和vim相比,emacs的plugin大部分都在aur中,就没有统一更新的好处了
