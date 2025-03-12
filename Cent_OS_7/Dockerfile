# Use CentOS 7 as the base image
FROM centos:7

# Switch to root user (default in CentOS image)
USER root

# Copy the local CentOS repo file to the container
COPY CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo

# Clean and update YUM cache
RUN yum clean all && yum makecache

# default command
CMD ["/bin/bash"]
