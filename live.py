#!/bin/bash

# Kiểm tra xem có liên kết được cung cấp không
if [ -z "$1" ]; then
    echo "Usage: $0 <YouTube_URL>"
    exit 1
fi

# Sử dụng youtube-dl để tìm và phát video từ liên kết trực tiếp
url="$1"
mpv $(youtube-dl -g -f bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4 "$url")
