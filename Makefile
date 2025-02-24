.PHONY: install reinstall

install: reinstall
		install -Dm755 "etc/boundbox/initramfs/boundbox.conf"	"$(DESTDIR)/etc/boundbox/initramfs/boundbox.conf"

reinstall:
		install -Dm755 "etc/initramfs-tools/hooks/boundbox" "$(DESTDIR)/etc/initramfs-tools/hooks/boundbox"
		install -Dm755 "etc/initramfs-tools/scripts/local-top/boundbox" "$(DESTDIR)/etc/initramfs-tools/scripts/local-top/boundbox"
		install -Dm755 "etc/initramfs-tools/scripts/local-bottom/boundbox"	"$(DESTDIR)/etc/initramfs-tools/scripts/local-bottom/boundbox"
		install -Dm755 "sbin/boundbox-initramfs"	"$(DESTDIR)/usr/local/sbin/boundbox-initramfs"

all: install