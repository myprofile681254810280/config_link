#!/bin/bash
#误用bash执行.py文件会产生难以预测的麻烦，所以执行前要检查
if [[ $1 =~ \.py$ ]];
then
    echo bash $@
else
    exec bash "$@"
fi
