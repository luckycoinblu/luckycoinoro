
Debian
====================
This directory contains files used to package luckycoinorod/luckycoinoro-qt
for Debian-based Linux systems. If you compile luckycoinorod/luckycoinoro-qt yourself, there are some useful files here.

## luckycoinoro: URI support ##


luckycoinoro-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install luckycoinoro-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your luckycoinoro-qt binary to `/usr/bin`
and the `../../share/pixmaps/luckycoinoro128.png` to `/usr/share/pixmaps`

luckycoinoro-qt.protocol (KDE)

