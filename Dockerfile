FROM ubuntu:latest
LABEL maintainer="blog.v12n.io"

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y && apt-get upgrade -y && apt-get install --no-install-recommends wget git unzip docker -y && apt-get clean