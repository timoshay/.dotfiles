dunstify -t 1000 "RECORDING"
ffmpeg -f x11grab -y -framerate 20 -s 1366x768 -i :0.0 -c:v libx264 \
  -preset superfast -crf 18 "$(date +'%H-%M-%S_%m-%d-%Y').mp4"
