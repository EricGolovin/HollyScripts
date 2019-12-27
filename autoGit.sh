CDIR=$(pwd)

for d in ~/Developer/* ; do
	if [ -d "$d" ]; then
		cd $d
		echo "Processing $d"
		if ! git rev-parse --is-inside-work-tree &> /dev/null; then
			for subd in ./* ; do
				if [ -d "$subd" ]; then
					cd $subd
					echo "\tProcessing $subd"
					if  git rev-parse --is-inside-work-tree &> /dev/null; then
						if git diff-index --quiet HEAD --; then
							echo "\t-Nothing to commit $subd\n"
						else
							git add -A
							git commit -m "regular commit"
							git push -u origin master
						fi
					fi
					cd ..
				fi
			done
		else
			if  git rev-parse --is-inside-work-tree &> /dev/null; then
				if git diff-index --quiet HEAD --; then
					echo "-Nothing to commit $d\n"
				else
					git add -A
					git commit -m "regular commit"
					git push -u origin master
				fi
			fi
		fi
		cd ..
		echo " "
	fi
done

cd
cp autoGit.sh ~/Developer
echo "Copied autoGit.sh to ~/Developer"

cd ~/OneDrive
if [ -f "Developer.gzip" ]; then
	rm Developer.gzip
	tar -czf Developer.gzip ~/Developer/ &
	echo "Updated Developer.gzip"
else 	
	tar -czf Developer.gzip ~/Developer/ &
	echo "Created Developer.gzip"
fi

rm ~/Developer/autoGit.sh
echo "Deleted ~/Developer/autoGit.sh"

cd $CDIR