all: hello

install:
	docker build . -t tflm-hello
	docker image ls tflm-hello
	docker run -it --rm -v "$(shell pwd):/root" -w /root tflm-hello bash "/root/run.sh"
	sudo chown -R ${USER}:${USER} tflite-micro/

hello:
	cd tflite-micro && make -j9 -f tensorflow/lite/micro/tools/make/Makefile hello_world
	./tflite-micro/gen/linux_x86_64_default/bin/hello_world
