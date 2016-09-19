packages:
	dpkg-scanpackages -m ./debs /dev/null > ./Packages
	gzip -c9 ./Packages > ./Packages.gz
	bzip2 -c9 ./Packages > ./Packages.bz2

.PHONY: clean packages

clean:
	rm ./Packages* &2> /dev/null
