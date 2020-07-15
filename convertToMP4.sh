mkdir MP4-VideoFiles
for FILE in *
do
	if [[ -f $FILE ]]
	then
        MPFILE="${FILE//.mkv}.mp4"
		$(ffmpeg -i "$FILE" "$MPFILE")
        $(mv "$MPFILE" "MP4-VideoFiles/")
	fi
done
