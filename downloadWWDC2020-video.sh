ARG=$1
NAME=$2
ffmpeg -i "$ARG/hvc_2160p_16800/prog_index.m3u8" -c copy "temp$NAME.mp4"
ffmpeg -i "$ARG/audio_english_192/prog_index.m3u8" -c copy "temp$NAME.aac"
ffmpeg -i "temp$NAME.mp4" -i "temp$NAME.aac" -c copy "$NAME.mp4"
rm "temp$NAME.mp4"
rm "temp$NAME.aac"
