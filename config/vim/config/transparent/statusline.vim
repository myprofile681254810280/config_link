"这里包括airline statusline ruler
"现在用的主要是airline,statusline的配置没有用到.

"Wed 27 Apr 2016 15:51:45 NZST
set t_Co=256

"根据terminal配色不同这里的White不会改变,所以无法依赖.
"hi NonText ctermfg=blue cterm=None
"vsplit分隔符
"\ |-││││─━━━━━━━━────────────

"白色透明方案,vim不允许NC窗口和当前窗口状态完全一样,所以会有^和=作为填充符.
"hi StatusLine ctermbg=None cterm=None
"hi StatusLineNC ctermbg=None cterm=None

"#set ruler
"autocmd FileType python set rulerformat=%25(%P\ %l,%c%V\ %{SyntasticStatuslineFlag()}\ %#warningmsg#%)

if !enable_airline
    if 1
        "underline 式样
        hi VertSplit ctermbg=None cterm=NONE
        set fillchars+=vert:\│
        hi StatusLine ctermfg=Cyan ctermbg=None cterm=underline
        hi StatusLineNC ctermbg=None cterm=underline
    else
        "制表符式样
        hi StatuesLine None
        hi clear Statusline
        "制表符方案比较好,能兼容tty
        "hi VertSplit ctermfg=Blue ctermbg=None cterm=NONE
        hi VertSplit ctermbg=None cterm=NONE
        set fillchars+=vert:\│
        "hi StatusLine ctermfg=Green ctermbg=None cterm=None
        "hi StatusLineNC ctermfg=Blue ctermbg=None cterm=None
        hi StatusLine ctermfg=Cyan ctermbg=None cterm=None
        hi StatusLineNC ctermbg=None cterm=None
        "因为要支持双色,所以不能用white
        "hi StatusLineNC ctermfg=White ctermbg=None cterm=None
        set fillchars+=stl:─
        set fillchars+=stlnc:─
    endif
endif 
