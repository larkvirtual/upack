install:
	@cp upack /usr/bin
	@git branch | grep '*' | awk '{ print $$2 }' > upack.version
	@awk 1 ORS='' upack.version > /usr/bin/upack.version
	@echo -n "/" >> /usr/bin/upack.version
	@git log --pretty=format:'%h' -n 1 >> /usr/bin/upack.version
	@rm -f upack.version
	@grep -q "altlinux" /etc/os-release 2> /dev/null; \
if [ $$? = 0 ]; then \
echo "Installing required bash4, as /bin/bash version 3"; \
apt-get install bash4 -y && \
sed -i 's/\#\!\/bin\/bash/\#\!\/bin\/bash4/' /usr/bin/upack; \
fi

uninstall:
	@rm /usr/bin/upack /usr/bin/upack.version
# is distro is atlinux, then bash4 package should be removed
