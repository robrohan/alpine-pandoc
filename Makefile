all:
	docker build -t robrohan/pandoc .

ubuntu:
	docker build -f Dockerfile.ubuntu -t robrohan/ubuntu-pandoc .

push:
	docker image push robrohan/pandoc:latest