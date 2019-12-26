if [ -f "Developer.gzip" ]; then
	tar -xzf Developer.gzip
	cd Users/ericgolovin
	mv Developer/ ../../../
	cd ../../ 
	rm -rf Users
fi

