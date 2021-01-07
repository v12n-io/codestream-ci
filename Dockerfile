FROM photon:latest
LABEL maintainer="blog.v12n.io"

# Update packages and install new ones
RUN tdnf -y install curl unzip git wget tar gzip gawk bindutils jq

# Add version
ADD VERSION .