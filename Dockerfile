FROM photon:latest
ARG VERSION
LABEL maintainer="blog.v12n.io"
LABEL version="$VERSION"

RUN tdnf update -y && \
    tdnf install -y curl unzip git wget tar bindutils coreutils && \
    tdnf clean all && \
    tdnf autoremove -y && \
    tdnf clean all

ADD VERSION .