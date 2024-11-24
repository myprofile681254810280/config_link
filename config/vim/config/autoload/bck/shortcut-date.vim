"这个脚本因为py3导致过错误,而且又不是必要的,所以就丢弃了
"vim中py3的引入大概是有更正规的写法的

if !has('py3')
	finish
endif

"因为日期标记本来就不是什么正式的东西,所以休闲一些也无所谓.
"emacs那边是记日志,所以肯定如此,vim这边暂时也没有正经用途

function! F5date()

py3 << EOF
import random
import vim
import sys
assert sys.version_info.major==2
s="""
🌶️🌷🌸🌹🌺🌻🌼🌽🌾🌿
🍀🍁🍂🍃🍄🍅🍆🍇🍈🍉🍊🍋🍌🍍🍎🍏
🍐🍑🍒🍓🍔🍕🍖🍗🍘🍙🍚🍛🍜🍝🍞🍟
🍠🍡🍢🍣🍤🍥🍦🍧🍨🍩🍪🍫🍬🍭🍮🍯
🍰🍱🍲🍳🍴🍵🍶🍷🍸🍹🍺🍻🍼🍽️🍾🍿
😀😁😂😃😄😅😆😇😈😉😊😋😌😍😎😏
😐😑😒😓😔😕😖😗😘😙😚😛😜😝😞😟
😠😡😢😣😤😥😦😧😨😩😪😫😬😭😮😯
😰🙀🙁🙂🙃🙄🤐🤑🤒🤓🤔🤕🤠🤡🤢🤣🤤🤥😱😲😳😴😵😶😷😸😹😺😻😼😽😾😿
"""
s=s.decode('utf8')
s=u''.join(s.split())
i=random.choice(s).encode('utf8')
cmd="let iInVim = '%s'"% i
vim.command(cmd)
EOF
    return strftime("%F %T %a %Z") 
    ". iInVim . "\n"  
endfunction

"insert date
"nnoremap <F5> "=<CR>P
nnoremap <F5> "=F5date()<CR>P
inoremap <F5> <C-R>=F5date()<CR>

