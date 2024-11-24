"2016-10-31 00:46:44 Mon NZDT
"好像没有什么需要配置的
"主要记录下使用说明,

"这个版本是基于另一个标记为xmledit.vim的基础上做的
"所以这里可能功能更多?但是vim.org上标记这个使用人更少 
"更新频率不及另一个,但是最近有更新 
"此外xmledit.xml 用vundle安装失败


""""""""""""""""""""""""""
"文档
"The documentation will be created once the script is loaded e.g edit a xml file.
"Read the help documentation by typing from within vim  :help xml-plugin

"打完头部标签后,会自动补齐尾部标签

""""""""""""""""""""""""""""""""""""""
"快捷键部分
"localleader键,我们映射的是","
"默认的键盘映射全部都是localleader前缀的
"这里记录下感觉有用的,最下面附上一张全表
"对浏览有用的
"<LocalLeader>5  Jump to the matching tag.                           ----
"<LocalLeader>f  fold the tag under the cursor                       ----
"<LocalLeader>F  all tags of name 'tag' will be fold.                ----
"<LocalLeader>5  Extend the visual selection to the matching tag.  ------


"不过用localleader这点和easymotion冲突了,所以键盘映射要改掉
"没办法,这个问题暂时没法处理,所以这个插件没法用了
"暂且还是用firefox看xml吧,反正以后需要也知道从哪里找xml插件了

                                                               
"""""""""""""""""""""""""""""""""""""""""""
"下面附上一张全表
"<LocalLeader>5  Jump to the matching tag.                           ----
"<LocalLeader>c  Rename tag                                          ----
"<LocalLeader>C  Rename tag and remove attributes                    ----
"<LocalLeader>d  Deletes the surrounding tags from the cursor.       ----
"<LocalLeader>D  Deletes the tag and it contents                     ----
"<LocalLeader>e  provide endtag for open tags.                       ----
"<LocalLeader>f  fold the tag under the cursor                       ----
"<LocalLeader>F  all tags of name 'tag' will be fold.                ----
"<LocalLeader>g  Format (Vim's gq function)                          ----
"<LocalLeader>G  Format all tags under cursor (Vim's gq function)    ----
"<LocalLeader>I  Indent all tags     ------------------------------------
"<LocalLeader>j  Joins two the SAME sections together.               ----
"<LocalLeader>l  visual surround the block with listitem and para     ---
"<LocalLeader>o  Insert a tag inside the current one (like vim o)     ---
"<LocalLeader>O  Insert a tag outside the current one (like vim O)     --
"<LocalLeader>s  Insert an opening tag for an closing tag.           ----
"<LocalLeader>[        Delete <![CDATA[ ]]> delimiters               ----
"<LocalLeader>{        Delete <![CDATA[ ]]> section                  ----
"<LocalLeader>]        Delete <!-- -->      delimiters               ----
"<LocalLeader>}        Delete <!--  -->      section                  ---
"<LocalLeader>>  shift right opening tag and closing tag.           -----
"<LocalLeader><  shift left opening tag and closing tag.           ------
"<LocalLeader>c  Visual Place a CDATA section around the selected text.  
"<LocalLeader><  Visual Place a Comment around the selected text.  ------
"<LocalLeader>5  Extend the visual selection to the matching tag.  ------
"<LocalLeader>v  Visual Place a tag around the selected text.       -----
                                                               
