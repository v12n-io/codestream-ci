FROM ubuntu:latest as baseimage
LABEL maintainer="blog.v12n.io"

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install --no-install-recommends wget git unzip docker -y
RUN apt-get clean

FROM baseimage as finalimage