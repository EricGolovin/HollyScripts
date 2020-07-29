ARG=$1
NAME=$2
ffmpeg -i "$ARG/2161c/prog_index.m3u8" -c copy "temp$NAME.mp4"
ffmpeg -i "$ARG/audioc/prog_index.m3u8" -c copy "temp$NAME.aac"
ffmpeg -i "temp.mp4" -i "temp.aac" -c copy "$NAME.mp4"
rm "temp$NAME.mp4"
rm "temp$NAME.aac"
