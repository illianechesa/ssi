



run: build
	docker run -it wfuzz /bin/bash

build: Dockerfile
	docker build -t wfuzz .