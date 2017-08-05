FROM vrviumichael/ubuntu:16.04

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF \
    && echo "deb http://repos.mesosphere.com/ubuntu xenial main" | tee /etc/apt/sources.list.d/mesosphere.list \
    && apt-get -y update && apt-get -y install mesos \
    && apt-get clean

ENTRYPOINT ["/usr/sbin/mesos-master"]
