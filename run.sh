#!/bin/bash

[ -d "/tflite-micro.git" ] || git clone https://github.com/tensorflow/tflite-micro.git
(cd tflite-micro/ && time make -j9 -f tensorflow/lite/micro/tools/make/Makefile hello_world 2>&1 | tee make.log)
./tflite-micro/gen/linux_x86_64_default/bin/hello_world
