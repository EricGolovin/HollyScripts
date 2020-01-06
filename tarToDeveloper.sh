cd /mnt/c/Users/ericg/OneDrive

if [ -f "Developer.gzip" ]; then
	echo "Unzipping Archive"
	tar -xzf Developer.gzip
	cd /mnt/c/Users/ericg
	if [ -d "Developer" ]; then
		echo "Moving to Developer"
		cd /mnt/c/Users/ericg/Developer
		if [ -d "updatedDev" ]; then
			echo "Deleted old updatedDev dir"
			rm -rf updatedDev
		fi
		echo "Moving Developer content to updatedDev"
		mv /mnt/c/Users/ericg/OneDrive/Users/ericgolovin/Developer/ ./updatedDev/
	else 
		echo "Moving Developer to home dir"
		mv /mnt/c/Users/ericg/OneDrive/Users/ericgolovin/Developer/ /mnt/c/Users/ericg/
	fi
	cd /mnt/c/Users/ericg/OneDrive 
	rm -rf Users
fi

