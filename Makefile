install:
	cp upack /usr/bin
	git branch | grep '*' | awk '{ print $$2 }' > upack.version
	awk 1 ORS='' upack.version > /usr/bin/upack.version
	echo -n "/" >> /usr/bin/upack.version
	git log --pretty=format:'%h' -n 1 >> /usr/bin/upack.version
	rm -f upack.version

uninstall:
	rm /usr/bin/upack /usr/bin/upack.version
