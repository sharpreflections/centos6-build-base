FROM centos:6
LABEL maintainer="dennis.brendel@sharpreflections.com"

RUN yum -y upgrade && \
    yum -y install @development && \
    yum clean all

