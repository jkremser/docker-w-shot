#!/bin/sh
echo -e "\n\nSmile, I am taking a photo...\n\n"
/usr/bin/ffmpeg -f video4linux2 -s 1280x960 -i /dev/video0 \
  -q:v 0 -b:v 10000k -vcodec mjpeg -vframes: 1 \
  /tmp/cam-data/pic-`date -u +'%Y-%m-%d-%H-%M-%S'`.jpg -y &> /dev/null
