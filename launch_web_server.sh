#!/bin/bash

# If you're having issues with the image recalling errors from some
# cache, then remove the image in 
# /var/lib/docker/image/overlay2/imagedb/content/sha256#
# that corresponds to the message 'writing image sha256:...'

docker kill nginx
docker rm nginx

# Build
docker build --rm --no-cache -t nginx .

# Start the web server
# docker run -dit --name nginx -p 8080:80 nginx
docker run -it --name nginx -p 8080:80 nginx

