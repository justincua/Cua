#!/bin/bash

# Kiểm tra xem có liên kết được cung cấp không
if [ -z "$1" ]; then
    echo "Usage: $0 <YouTube_URL>"
    exit 1
fi

# Lấy URL YouTube từ tham số đầu tiên
url="$1"

# Sử dụng youtube-dl để lấy đường dẫn trực tiếp đến video
video_url=$(youtube-dl -g -f bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4 "$url")

# Kiểm tra xem có lỗi khi lấy đường dẫn không
if [ $? -ne 0 ] || [ -z "$video_url" ]; then
    echo "Không thể lấy đường dẫn video từ liên kết được cung cấp."
    exit 1
fi

# Phát video sử dụng mpv
mpv --no-cache --fs "$video_url"
