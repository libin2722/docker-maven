#
# MAINTAINER        Terry.Li<libin2722@sohu.com>
# DOCKER-VERSION    1.12.1
#
# Dockerizing Maven: Dockerfile for building maven images
#
FROM       daocloud.io/libin2722/jdk:latest
MAINTAINER Terry.Li,<libin2722@sohu.com>

ENV MAVEN_NAME apache-maven-3.3.9
ENV MAVEN_HOME /opt/apache-maven-3.3.9

RUN curl -o $MAVEN_NAME-bin.tar.gz http://mirrors.cnnic.cn/apache/maven/maven-3/3.3.9/binaries/$MAVEN_NAME-bin.tar.gz

RUN tar -zxf $MAVEN_NAME-bin.tar.gz -C /opt

RUN echo 'export PATH=$MAVEN_HOME/bin:$PATH' > /etc/profile && \
    echo 'export CLASSPATH=$MAVEN_HOME/lib:$CLASSPATH' > /etc/profile

RUN source /etc/profile







