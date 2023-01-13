# Flathub Rymdport Package

This repository contains the official Flatpak package for [Rymdport](https://github.com/Jacalz/rymdport).

<a href='https://flathub.org/apps/details/io.github.jacalz.rymdport'><img width='200' alt='Download on Flathub' src='https://flathub.org/assets/badges/flathub-badge-en.png'/></a>

## Installing

Rymdport is available for both `aarch64` and `x86_64`. Use the following commands to install:
```
flatpak remote-add flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub io.github.jacalz.rymdport
```

## Issues

Only issues specific to the Flathub package should be reported in this repository. Any other issues should be reported at https://github.com/Jacalz/rymdport/issues.

## Future work

The plan is to make the application use portals for file handling in the future and also use Wayland when possible.

## Sponsoring

Rymdport is an open source project that is provided free of charge, and that will continue to be the case forever. If you use this project and appreciate the work being put into it, please consider supporting its development through [GitHub Sponsors](https://github.com/sponsors/Jacalz). This is in no way a requirement, but would be greatly appreciated and would allow for even more improvements to come further down the road.

## Building locally

Building the package locally requires `flatpak-builder` to be installed. Install it through your distrubution's package manager.

Assuming that flathub already is added as a remote, the required SDKs have to be downloaded:
```
flatpak install flathub org.freedesktop.Platform//22.08 org.freedesktop.Sdk//22.08 org.freedesktop.Sdk.Extension.golang//22.08
```

The next step is to build and install the package:
```
flatpak-builder --user --install --force-clean build-dir io.github.jacalz.rymdport.yml
```

Lastly, the built application can be started by running:
```
flatpak run --user io.github.jacalz.rymdport
```
