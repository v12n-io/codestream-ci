FROM photon:latest
LABEL maintainer="blog.v12n.io"

# Update packages and install new ones
RUN tdnf -y install curl unzip git wget tar gzip gawk

# Add version
ADD VERSION .