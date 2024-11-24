
"用yapf替代autoformat和pep8,这样才能让yapf的全局配置生效
"autocmd FileType python noremap <F4> :call yapf#YAPF()<cr>
"autocmd FileType python imap <C-Y> <c-o>:call yapf#YAPF()<cr>

"autocmd FileType python noremap <F4> :Autoformat<CR><CR> 
" :Isort<CR><CR>
"
"autocmd FileType rust   noremap <F4> :Autoformat<CR><CR>

"包括python c c++ js html css,github上有说明需要额外安装多少软件.

"下面用autocmd bufwritepre的办法,不过由于我们主要通过s保存,所以可以把autoformat放在键映射那里.不过如此的话,我不确定该如何区分文件,autocmd filetype是否有效.
"
"2017-06-26 18:23:34 Mon NZST
"这里关掉,主要问题在于每次autoformat之后,undo的位置都会出问题,很影响编辑
"
""可以用S暂时关掉autocmd，改其他人的项目的时候，开着不方便
""python需要pep8
"autocmd BufWritePre *.py :Autoformat
""python以外的代码很多情况下都是别人写的,所以不适合开启.
""c家族需要clang
"autocmd BufWritePre *.cpp :Autoformat
"autocmd BufWritePre *.cxx :Autoformat
"autocmd BufWritePre *.c :Autoformat
""yaourt -S js-beautify #包含css和html
"autocmd BufWritePre *.js :Autoformat
"autocmd BufWritePre *.json :Autoformat
"autocmd BufWritePre *.html :Autoformat
"autocmd BufWritePre *.css :Autoformat

"let g:formatprg_glsl = "astyle"
"let g:formatters_python = ['autopep8']
"2017-05-30 21:55:52 Tue JST
"新版本开了verbose会很麻烦
let g:autoformat_verbosemode = 0
