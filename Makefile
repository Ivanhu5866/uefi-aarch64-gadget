# filtered list of modules included in the signed EFI grub image, excluding
# ones that we don't think are useful in snappy.
GRUB_MODULES = \
	all_video \
	biosdisk \
	boot \
	cat \
	chain \
	configfile \
	echo \
	ext2 \
	fat \
	font \
	gettext \
	gfxmenu \
	gfxterm \
	gfxterm_background \
	gfxterm_menu \
	gzio \
	halt \
	jpeg \
	keystatus \
	loadenv \
	loopback \
	linux \
	memdisk \
	minicmd \
	normal \
	part_gpt \
	png \
	reboot \
	search \
	search_fs_uuid \
	search_fs_file \
	search_label \
	serial \
	sleep \
	squash4 \
	test \
	true \
	btrfs \
	hfsplus \
	iso9660 \
	part_apple \
	part_msdos \
	password_pbkdf2 \
	zfs \
	zfscrypt \
	zfsinfo \
	lvm \
	mdraid09 \
	mdraid1x \
	raid5rec \
	raid6rec \
	video

all:
	cp $(SNAPCRAFT_STAGE)/usr/lib/grub/arm64-efi-signed/grubaa64.efi.signed grubaa64.efi

install:
	install -m 644 grubaa64.efi $(DESTDIR)/
	install -m 644 grub.conf grub-cpc.cfg $(DESTDIR)/
