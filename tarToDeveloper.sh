if [ -f "Developer.gzip" ]; then
	tar -xzf Developer.gzip
	cd Users/ericgolovin
	if [ -d "Developer" ]; then
		mv Developer/ ../../../updatedDev/
	else 
		mv Developer/ ../../../
	fi
	cd ../../ 
	rm -rf Users
fi
