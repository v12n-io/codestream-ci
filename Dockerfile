FROM centos:centos7
LABEL maintainer="blog.v12n.io"

# Update packages and install new ones
RUN yum -y update && yum -y install curl unzip git wget

# Add version
ADD VERSION .