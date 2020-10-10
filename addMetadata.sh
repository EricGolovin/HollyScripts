# print number of files in directory

numFiles="$(ls | wc -l)"
echo "Number of files in directory: $numFiles"

# add metadata to files
var=1
for data in ./*
do
	echo "$var out of$numFiles"
	filename="$(basename \"$data\" | sed 's/\(.*\)\..*/\1/')"
	exiftool -DateCreated="$filename" "$data"
	((var++))
done
