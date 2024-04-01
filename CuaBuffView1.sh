#!/bin/bash

# Kiểm tra xem có đường dẫn đến video YouTube được cung cấp không
if [ -z "$1" ]; then
    echo "Usage: $0 <YouTube_URL>"
    exit 1
fi

# Sử dụng youtube-dl để tìm và phát video từ liên kết
url="$1"
video_url=$(youtube-dl --get-url --skip-download "$url")

# Kiểm tra nếu không tìm thấy đường dẫn video
if [ -z "$video_url" ]; then
    echo "Không thể tìm thấy đường dẫn video từ liên kết được cung cấp."
    exit 1
fi

# Sử dụng mpv để phát video từ đường dẫn đã tìm được
mpv "$video_url"
