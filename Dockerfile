FROM alpine:latest
LABEL maintainer="blog.v12n.io"

# Update packages and install new ones
RUN apk -U upgrade
RUN apk add curl unzip git wget

# Add version
ADD VERSION .