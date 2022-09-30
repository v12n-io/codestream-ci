FROM photon:latest
LABEL maintainer="blog.v12n.io"

RUN tdnf update -y && \
    tdnf install -y curl unzip git wget tar gzip gawk bindutils jq coreutils docker && \
    tdnf clean all && \
    tdnf autoremove -y && \
    tdnf clean all