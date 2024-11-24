#!/bin/bash
#见  ~/bin/filter/bash_filter.py
#python ~/bin/filter/bash_filter.py $@ | bash
#
#经常性误用bash运行python.过滤下不要运行py后缀文件.
#仅仅只过滤arg[0]参数
if [[ $1 =~ \.py$ ]];
then
    echo bash $@
else
    exec bash "$@"
fi
