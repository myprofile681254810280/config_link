"2018-01-31 09:17:51 Wed CST
"https://askubuntu.com/questions/223018/vim-is-not-remembering-last-position/223037
"自动找到之前打开的位置,似乎应该是默认配置,但是找不到
"下面这个只找到line,不找到position,如果删掉.vimrc,vim是可以同时找出line和position的
" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

