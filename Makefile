# This is just a Makefile to simplify running some of the commands mentioned in the README.

build:
	flatpak-builder --user --force-clean build-dir io.github.jacalz.rymdport.yml

install:
	flatpak-builder --user --install --force-clean build-dir io.github.jacalz.rymdport.yml

run:
	flatpak run --user io.github.jacalz.rymdport
