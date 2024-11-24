if enable_airline
    set laststatus=2
    "airline 
    "set laststatus=2
    "开启powerline
    let g:airline_powerline_fonts = 1
    "theme的颜色模式难以辨认,所以没法改动.
"    let g:airline_theme='th'
"    let g:airline_left_sep=' ' "'>'
"    let g:airline_right_sep=' ' "'<'
    "let g:airline_skip_empty_sections = 1
    "
    ""airline方案,airline暂且的用处是可以配合syntastic使用,显示encode格式
    ""airline下制表符显示不正确.
    let g:airline_theme='luna'
    hi VertSplit ctermbg=None cterm=NONE
    set fillchars+=vert:\│
    "#|
    "┃
    "│qterm下用不了,
    hi StatusLine ctermfg=Cyan ctermbg=None cterm=underline
    hi StatusLineNC ctermbg=None cterm=underline
endif


"function! EnableStatusLine()
"    set fillchars+=stl:\ 
"    set fillchars+=stlnc:\ 
"    "syntastic
"    "下面的配置手动好像比较难处理,似乎和airline配合比较好用.
"    " start of default statusline
"    set statusline=%f\ %h%w%m%r\ 
"    " Syntastic statusline
"    set statusline+=%#warningmsg#
"    set statusline+=%{SyntasticStatuslineFlag()}
"    set statusline+=%*
"    " 应该就是这里导致airline无法使用box符号.
"    set statusline+=%=
"    " end of default statusline (with ruler)
"    set statusline+=%(%l,%c%V\ %=\ %P%)
"endfunction

"if enable_airline
"
"
"    "这里改了一小行,覆盖掉原本的提示色背景.
"    function! airline#themes#patch(palette)
"      for mode in keys(a:palette)
"        if !has_key(a:palette[mode], 'airline_warning')
"          "let a:palette[mode]['airline_warning'] = [ '#000000', '#df5f00', 232, 166 ]
"        endif
"        if !has_key(a:palette[mode], 'airline_error')
"          let a:palette[mode]['airline_error'] = [ '#000000', '#990000', 232, 160 ]
"        endif
"      endfor
"
"      let a:palette.accents = get(a:palette, 'accents', {})
"      let a:palette.accents.bold = [ '', '', '', '', 'bold' ]
"      let a:palette.accents.italic = [ '', '', '', '', 'italic' ]
"
"      if !has_key(a:palette.accents, 'red')
"        let a:palette.accents.red = [ '#ff0000' , '' , 160 , '' ]
"      endif
"      if !has_key(a:palette.accents, 'green')
"        let a:palette.accents.green = [ '#008700' , '' , 22  , '' ]
"      endif
"      if !has_key(a:palette.accents, 'blue')
"        let a:palette.accents.blue = [ '#005fff' , '' , 27  , '' ]
"      endif
"      if !has_key(a:palette.accents, 'yellow')
"        let a:palette.accents.yellow = [ '#dfff00' , '' , 190 , '' ]
"      endif
"      if !has_key(a:palette.accents, 'orange')
"        let a:palette.accents.orange = [ '#df5f00' , '' , 166 , '' ]
"      endif
"      if !has_key(a:palette.accents, 'purple')
"        let a:palette.accents.purple = [ '#af00df' , '' , 128 , '' ]
"      endif
"    endfunction
"
"else
"    "autocmd FileType python call EnableStatusLine()
"    "call EnableStatusLine()
"endif
