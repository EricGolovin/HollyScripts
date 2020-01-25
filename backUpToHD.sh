notFolder01=$1
notFolder02=$2
# folder name with date
now=$(date +'%m-%d-%Y')
dirname="MacBackUp_$now"

# creating folder in HardDrive memory
cd /Volumes/HardDrive/
mkdir $dirname
cd

# creating the path to folder
HDdirName="/Volumes/HardDrive/$dirname/"
echo $HDdirName

# coping gzS to HardDrive folder
for d in ./*; do
    tmp=$(basename $d)
    if [ "$tmp" == "Library" ]; then 
        continue;
    elif [ $tmp == "Applications" ]; then 
        continue;
	elif [ $tmp == "Pictures" ]; then
	continue
    elif [ $tmp == $notFolder01 ]; then
        continue;
	elif [ $tmp == $notFolder02 ]; then
	continue;
    else 
        tar -cvzf $tmp.tar.gz $d;
        mv $tmp.tar.gz $HDdirName;
    fi
done
