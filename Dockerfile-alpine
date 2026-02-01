FROM alpine:latest

# https://mirrors.alpinelinux.org/
RUN sed -i 's@dl-cdn.alpinelinux.org@ftp.halifax.rwth-aachen.de@g' /etc/apk/repositories

RUN apk update
RUN apk upgrade

# required amneziawg-tools
RUN apk add --no-cache \
  gcc make linux-headers musl-dev git
  bash xz

ENV XZ_OPT=-e9
COPY build-static-amneziawg-tools.sh build-static-amneziawg-tools.sh
RUN chmod +x ./build-static-amneziawg-tools.sh
RUN bash ./build-static-amneziawg-tools.sh
