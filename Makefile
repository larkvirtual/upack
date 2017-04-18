install:
	@cp upack /usr/bin
	@git branch | grep '*' | awk '{ print $$2 }' > upack.version
	@echo / >> upack.version;
	@if [ `uname` = SunOS ]; then \
gawk 1 ORS='' upack.version > /usr/bin/upack.version; \
else \
awk 1 ORS='' upack.version > /usr/bin/upack.version; \
fi
	@git log --pretty=format:'%h' -n 1 >> /usr/bin/upack.version
	@rm -f upack.version
	-@grep -q "altlinux" /etc/os-release 2> /dev/null; \
if [ $$? = 0 ]; then \
echo "Installing required package bash4, as existing /bin/bash is version 3"; \
apt-get install bash4 -y && \
sed -i 's/\#\!\/bin\/bash/\#\!\/bin\/bash4/' /usr/bin/upack; \
fi
	@if [ `uname` = FreeBSD ]; then \
echo "Installing required package bash, as bash (any version) is missing"; \
pkg install bash; \
sed 's/\#\!\/bin\/bash/\#\!\/usr\/local\/bin\/bash/' /usr/bin/upack > /usr/local/bin/upack; \
sed -i '' 's/\/usr\/bin\/upack\.version/\/usr\/local\/bin\/upack\.version/' /usr/local/bin/upack; \
chmod a+x /usr/local/bin/upack; \
mv /usr/bin/upack.version /usr/local/bin/upack.version; \
rm -f /usr/bin/upack; fi

uninstall:
	@if [ `uname` = FreeBSD ]; then \
rm -f /usr/local/bin/upack /usr/local/bin/upack.version; \
else rm -f /usr/bin/upack /usr/bin/upack.version; fi
# if distro is altlinux, then bash4 package should be removed
# if os is freebsd, then bash package should be removed

update:
	sudo make uninstall && git pull && sudo make install
