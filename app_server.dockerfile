FROM --platform=linux/amd64 nginx:1.22.0
RUN apt update
ENV TZ=Europe/Istanbul
RUN apt install -y tzdata
#RUN apt install -y openssl opensc 
RUN apt install -y libjson-c-dev softhsm2
