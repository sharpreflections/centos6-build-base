FROM centos:6
LABEL maintainer="dennis.brendel@sharpreflections.com"

# The CentOS repos are down because CentOS 6 is EOL
# Use the vault instead

RUN rm -f /etc/yum.repos.d/CentOS-Base.repo
COPY CentOS6.10-Vault.repo /etc/yum.repos.d/

RUN yum -y upgrade && \
    yum -y install @development && \
    yum clean all

