#!/bin/bash

docker run -d -p 8080:80 \
	--mount type=bind,src=/path/to/your/local/directory,dst=/usr/share/nginx/html \
	nginx:1.25
