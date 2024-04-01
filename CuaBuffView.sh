#!/bin/bash

# Kiểm tra xem có liên kết được cung cấp không
if [ -z "$1" ]; then
    echo "Dữ Liệu: $0 <YouTube_URL>"
    exit 1
fi

# Sử dụng youtube-dl để tìm và phát video từ liên kết
url="$1"
video_url=$(youtube-dl -g "$url")

# Kiểm tra nếu không tìm thấy đường dẫn video
if [ -z "$video_url" ]; then
    echo "Không thể tìm thấy đường dẫn video từ liên kết được cung cấp."
    exit 1
fi

# Sử dụng mpv để phát video từ đường dẫn đã tìm được
mpv "$video_url"
