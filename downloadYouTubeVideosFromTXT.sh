while IFS= read -r line
do
  youtube-dl -f bestvideo+bestaudio --recode-video mp4 -o "%(upload_date)s-%(title)s.%(ext)s" "$line"
done < "$1"
