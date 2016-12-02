FROM ubuntu:14.04

# Install the python script required for "add-apt-repository"
RUN apt-get update && apt-get install -y software-properties-common

# Sets language to UTF8 : this works in pretty much all cases
ENV LANG en_US.UTF-8
RUN locale-gen $LANG

# Setup the openjdk 8 repo
RUN add-apt-repository ppa:openjdk-r/ppa

# Install java8
RUN apt-get update && apt-get install -y --no-install-recommends \
    openjdk-8-jdk \
    bzip2 \
    unzip \
    xz-utils \
    git \
    ant \
    ant-optional 

# Setup JAVA_HOME, this is useful for docker commandline
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
RUN export JAVA_HOME
RUN update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java

RUN cd /root/ && git clone -b firemind https://github.com/firemind/magarena-csm-auto.git magarena

RUN cd /root/magarena && ant

COPY run-worker.sh /usr/local/bin/
CMD /usr/local/bin/run-worker.sh
