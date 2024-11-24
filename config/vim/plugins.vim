"插件

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" Useful ones
Plugin 'gmarik/Vundle.vim'              "包管理
"Plugin 'Chiel92/vim-autoformat'         "F4 格式化


"用autoformat似乎便于加载配置,只能直接google
"Plugin 'google/yapf', { 'rtp': 'plugins/vim' }

"""""Plugin 'public/vim-sort-python-imports' "python import整理,需要和上面的合并
"Plugin 'vim-isort' "需要python-isort,python2,3 都装上,似乎用的是python2.  python import整理,需要和上面的合并
"Plugin 'python_import.vim' "这个版本会消除无用import
"Plugin 'vim-autoflake' "消除无用imports 和var需要pyflakes,
"Plugin 'nvie/vim-flake8' "消除无用imports 和var需要flake8,github 700star
"Plugin 'andviro/flake8-vim' "消除无用imports 和var需要flake8,github 700star
"Plugin 'xolox/vim-misc'
"Plugin 'easytags.vim'
"Plugin 'easymotion/vim-easymotion'      "主要用法,在普通motion命令前加上 ,,
"
"有bug,停用等bug修复
"ycm有整合jedi
"Plugin 'davidhalter/jedi-vim'
"Plugin 'VOoM'                           "tex tree视图
"Plugin 'terryma/vim-multiple-cursors'   
Plugin 'mg979/vim-visual-multi'
"Plugin 'rking/ag.vim'                   "好像是跨文件搜索用的  sudo apt install silversearcher-ag
"Plugin 'marijnh/tern_for_vim'           "好像是javascript相关的refactor,ycm有集成它作为代码提示.
Plugin 'peterhoeg/vim-qml' "qml高亮
"Plugin 'wesnothcfg.vim' "wesnoth高亮
Plugin 'arrufat/vala.vim' "vala高亮

"因为*.cfg匹配的,不方便,所以用setf wesnothcfg 手动启动
Plugin 'alvan/vim-closetag' "自动关闭tag.这个插件可以用一段时间,不一定是最好的,不过手边暂且用它应该够了
"Plugin 'mattn/emmet-vim' "html编辑
"使用教程在这里,https://github.com/mattn/emmet-vim/,需要记不少操作

"可以从pacman安装的包,不过这些包本身更新不频繁,因此没有用pacman管理更新的价值
"而且似乎pacman管理的部分和vundle管理的部分存在冲突的可能性,所以暂且不用pacman的版本
"source ~/.config/vim/plugins_pacman.vim
"Plugin 'metakirby5/codi.vim'


"Plugin 'fcitx.vim'   "在非insert模式下自动切换掉fcitx,稳定版本至今已经有3年了,先用一段时间,不知道有没有什么潜在bug
"为了使用fcitx5
Plugin 'lilydjwg/fcitx.vim'    
"测试结果是很不稳定,总是表现异常,反而让操作变得繁琐了.相对的来说,作为衍生品的emacs 版本倒是很稳定,幸而需要中文输入的主要是emacs org
"不过emacs 的输入法切换似乎是全局性的,因而用emacs 的时候,也会影响到vim,emacs
"自己倒是很正常,但是会导致vim 异常
"

"2017-08-05 03:25:28 Sat NZST
"独立维护很麻烦.现在只在必要的时候开一个适合的theme
"if enable_airline
"    "自定义的透明主题
"endif 
"
Plugin 'mbbill/undotree'                "F6 
"orgmode
"vim的orgmode不够成熟,所以还是要用emacs
"Plugin 'jceb/vim-orgmode'
"Plugin 'vim-orgmode'
"这东西会覆盖<C-a>按键
"Plugin 'speeddating.vim'
"Plugin 'utl.vim'
"Plugin 'Tagbar'

"直接用的时候调用的是python2,不知如何改到python3
"Plugin 'ivanov/vim-ipython'

"Plugin 'tpope/vim-pathogen'            "另一个包管理
"Plugin 'yuratomo/w3m.vim'              "w3m插件


"""""""""""""""""""""""""""""""""
"xml相关
Plugin 'xml.vim'


"4 使用 Ultisnip 优雅的增强补全。 这个插件可以扩展YCM 的提示，
"而且可以自定义代码生成。简直神器。
"
"snipmate相关4个plugin
"似乎可以用来补全html tag,不兼容ycm.
"不过我怎么都没能让它运作.
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
"Optional:
"Plugin 'honza/vim-snippets'

"似乎很便利的快速html编辑,需要它的原因应该是html中冗余字符太多了.
"需要安装独立的excutable.
"https://github.com/rstacruz/sparkup
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}           

""Plugin 'glsl.vim' "glsl高亮
Plugin 'tikhomirov/vim-glsl'

"Plugin 'dcbaker/vim-arb_assembly' "arb高亮?

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'klen/python-mode'
"Plugin 'python-rope/ropevim'
"Plugin 'LaTeX-Box-Team/LaTeX-Box'
"Plugin 'ChesleyTan/wordCount.vim'


"Plugin 'JuliaLang/julia-vim'
"Plugin 'mattn/emmet-vim'
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" All of your Plugins must be added before the following line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call vundle#end()            " required
filetype plugin indent on    " required

"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
