"#http://www.vim.org/scripts/script.php?script_id=3764
"#注意事项:
"#1. Vim 如有 Python 3或2 支持可以获得更快更好的效果。但对于较旧的 Vim 版本，如果同时编译了 Python 2 & 3 支持，因为此 Vim 不能同时运行两个版本的 Python，而本脚本首先检查 Python 3，所以会导致出错或者 Python 2 不可用。
"2. 终端下请设置 Vim 'ttimeoutlen' 选项为较小值（如100），否则退出插入模式时会有较严重的延迟。同样会造成延迟的还有 screen 的 maptimeout 选项以及 tmux 的 escape-time 选项。
"
"这个插件的必要性:主要是输入中文的时候,会需要esc退出后用x等进行修正,这样的切换很频繁,所以自动切换是必要的
"和emacs不同的是,emacs有个服务端开着,每次开新文本都不需要切换输入法了.不过vim是单一进程,开启关闭都是独立的
set ttimeoutlen=100
