
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ycm
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"似乎ycm整合了jedi,但是我没有配置过jedi,所以暂且放这里.jedi可能可以提供更详细的python配置.
let g:jedi#completions_enabled = 0
"虽然archlinux中代码提示的确是来自python3,
"但是如果不指明下面给的变量,goto跳跃给出的仍然是python2
"这个path位置在archlinux中是python3
let g:ycm_python_binary_path = '/usr/bin/python'
let g:ycm_server_python_interpreter= '/usr/bin/python'
"JavaSearch 查询定义的方法,类 map到<C-]>
"2016-07-22 17:11:26 Fri NZST
"原来ycm的goto跳跃这么方便,之前一直都没发现,而去用ctag,真是太浪费了.
"这种覆盖<C-]>的方式并太好,似乎会连带引向同一个vim中的其他文件类型.
autocmd FileType python nnoremap <C-]> :YcmCompleter GoTo<CR>
autocmd FileType rust nnoremap <C-]> :YcmCompleter GoTo<CR>
"autocmd FileType python nnoremap <C-]> :YcmCompleter GoToDefinition<CR>
"很有用的命令,暂且不知道放哪里合适.
"autocmd FileType python nnoremap <C-]> :YcmCompleter GoToReferences<CR>
"autocmd FileType python nnoremap <C-]> :YcmCompleter GetDoc<CR>

"home目录准备了一份基础的.tern-config配置,调用其他类库的更详细的配置参见 help ycm
autocmd FileType javascript nnoremap <C-]> :YcmCompleter GoTo<CR>
"autocmd FileType javascript nnoremap <C-]> :YcmCompleter GetType<CR>
"autocmd FileType javascript nnoremap <C-]> :YcmCompleter RefactorRename 
"
"
autocmd FileType c nnoremap <C-]> :YcmCompleter GoTo<CR>
"autocmd FileType c nnoremap <C-]> :YcmCompleter FixIt<CR>

autocmd FileType cpp nnoremap <C-]> :YcmCompleter GoTo<CR>


"The *:YcmToggleLogs* command
"The *:YcmDebugInfo* command
"The *:YcmShowDetailedDiagnostic* command
"
""""""""""""""""""""""""""""""""""
"PREVIEW
"preview docstrings窗口的位置.会用到plugin可能包括git和ycm
"在顶部弹出会导致当前的窗口跳跃,所以很不好.
set splitbelow
"但问题是,即使在下方,ycm还是太占空间.不过自动关闭掉应该会好些.
"不过这样旧没有ctrl w 跳转的余地了
"这个还是要保留不关掉的,因为可以看清调用未知函数所需要的变量
"
"不过很碍事,还是要关掉
"let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
"用到的时候才弹窗是理想的,但是问题是,vim的出现preview就是一次split,split之后就是resize-window,而resize-window的时候,是根据光标位置,而不是第一行进行的,因为如果光标在最后一行,那么想要维持第一行不变,就要移动光标了,因此第一行会因为弹窗变动,所以每次弹窗都会导致整个文本的跳动
"因此,解决办法似乎只有限定preview的尺寸不要占据太多空间了.
"4行对于一些复杂参数应该是不够的,那些应该会需要ctrl ]
"跳入进去源码查看,所以其实也不算是很不方便
set previewheight=4
set winfixheight
