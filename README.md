# Unofficial Docker image for EPSON image scan v3

EPSON imagescan v3 for Linux is not supported any longer. So I composed the utility into a Docker image.

## Install

1. Download imagescan-bundle-debian-10-3.65.0.x64.deb.tar.gz from EPSON's website and put it into this directory.

2. Run

```
$ ./build.sh
```

3. (Optionally) install `imagescan` wrapper into your bin directory.

e.g.

```
$ cp imagescan ~/bin/
```

## Usage

Calling Docker container directly:

```
$ docker run -e SCANNER_IPADDR='192.168.0.123' imagescan:latest > result.jpg
```

Wrapped imagescan command:

```
$ imagescan
```