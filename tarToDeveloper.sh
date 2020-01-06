cd /mnt/c/Users/ericg/OneDrive

if [ -f "Developer.gzip" ]; then
	tar -xzf Developer.gzip
	if [ -d "Developer" ]; then
		cd /mnt/c/Users/ericg/Developer
		if [ -d "updatedDev" ]; then
			rm -rf updatedDev
		fi
		mv /mnt/c/Users/ericg/OneDrive/Users/ericgolovin/Developer/ ./updatedDev/
	else 
		mv /mnt/c/Users/ericg/OneDrive/Users/ericgolovin/Developer/ /mnt/c/Users/ericg/
	fi
	cd /mnt/c/Users/ericg/OneDrive 
	rm -rf Users
fi

