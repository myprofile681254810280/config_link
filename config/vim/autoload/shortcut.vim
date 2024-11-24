"一些独立的按键映射
"
":map 找出现有的映射
noremap h <BS>
noremap l <space>
noremap j gj
noremap k gk

set mouse=a
"会连带影响鼠标点选进入visual模式
noremap <ScrollWheelUp> kkk
noremap <ScrollWheelDown> jjj

"Thu 26 May 2016 05:05:53 AM NZST
"vim fold
"z+a "z+c z+o
"
"从rofi抄来的按键约定,挺顺手的.其他<C-h><C-m>,terminal可以自行识别.
"nnoremap <C-e> $
"nnoremap <C-a> ^
"vnoremap <C-e> $
"vnoremap <C-a> ^
noremap <C-e> <End>
noremap <C-a> <Home>
noremap! <C-e> <End>
noremap! <C-a> <Home>
"nmap - Display normal mode maps
"imap - Display insert mode maps
"vmap - Display visual and select mode maps
"smap - Display select mode maps
"xmap - Display visual mode maps
"cmap - Display command-line mode maps
"omap - Display operator pending mode maps
"noremap <C-PageUp> gt
"noremap <C-PageDown> gt
"
"不清楚功能的键,为了避免误触.
"noremap H hhh  H 是到screen头部
"noremap L lll screen底部
"2017-06-22 01:26:28 Thu NZST
"因为C-d匹配fish和ascii改成了退出,所以要把JK换成翻页,这样使用其实更自然,并且原本的JK并没有起什么作用
"noremap J <C-d>
"noremap K <C-u>
"下面改成移动屏幕而不是光标,对于阅读时很有用,不过因为长句换行问题,效果还是不及less
noremap J <C-e>
noremap K <C-y>
"匹配一般网页文档中的space翻页
noremap <space> jjj
