for FILE in ~/Downloads/test01/* #~/Desktop/
do 
    COMPFILE="/Users/ericgolovin/Downloads/test02/${FILE##*/}" #~/OneDrive/$FILE"
    #echo $COMPFILE
    if [[ -f $COMPFILE ]]
    then
        echo
    elif [[ -d $COMPFILE ]]
    then 
        echo
    else
        echo "Removing directory/file " $FILE
        #rm " $FILE"
    fi
done
