FROM ubuntu
RUN apt update && apt install -y git make unzip curl g++ python3 pip wget #netcat
COPY requirements.txt ./
RUN pip3 install -r requirements.txt
#RUN git clone https://github.com/tensorflow/tflite-micro.git
#WORKDIR tflite-micro
#RUN make -j9 -f tensorflow/lite/micro/tools/make/Makefile test_evaluate_cc_test hello_world_bin ADDITIONAL_DEFINES=--coverage
#RUN gcov -pb -o gen/linux_x86_64_default/obj/core/tensorflow/lite/micro/examples/hello_world tensorflow/lite/micro/examples/hello_world/hello_world_test.cc
#RUN ./gen/linux_x86_64_default/bin/hello_world_test
#CMD sleep 5 && ./gen/linux_x86_64_default/bin/hello_world 2>&1 | nc -v frontend 50007
