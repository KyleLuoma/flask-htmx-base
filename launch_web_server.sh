#!/bin/bash
docker kill nginx
docker rm nginx

# Build
docker build --rm --no-cache -t nginx .
# Start the web server
docker run -dit --name nginx -p 8080:80 nginx

