#!/bin/bash

# 檢查是否有輸入 commit message
if [ "$1" != "-m" ] || [ -z "$2" ]; then
    echo "使用方法: $0 -m <commit message>"
    exit 1
fi

# 變數設定
commit_message=$2

# 執行 git 操作
git add .
git commit -m "$commit_message"
git push