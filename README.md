[![Build status](https://travis-ci.org/radanalyticsio/base-notebook.svg?branch=master)](https://travis-ci.org/Jiri-Kremser/docker-webcam-shot)
[![Docker build](https://img.shields.io/docker/automated/Jiri-Kremser/docker-webcam-shot.svg)](https://hub.docker.com/r/Jiri-Kremser/docker-webcam-shot)
[![Layers info](https://images.microbadger.com/badges/image/Jiri-Kremser/docker-webcam-shot.svg)](https://microbadger.com/images/Jiri-Kremser/docker-webcam-shot)

# webcam shot
Very simple tool that takes a photo from the webcam. It uses `--device=/dev/video0`
to be able to access the web camera on host. Also it mounts the directory, where the
resulting images are stored. See the [Makefile](Makefile) for the details.

## Building the image
```bash
make clean build
```

## Usage

To capture the photo run:

```bash
make run
```

To show the latest captured:
```bash
make show
```

## Using the public image
```bash
mkdir -p /tmp/cam-data
docker run --rm --device=/dev/video0 -v /tmp/cam-data:/tmp/cam-data:z jkremser/webcam-shot
```

You can find your pictures in `/tmp/cam-data`.
