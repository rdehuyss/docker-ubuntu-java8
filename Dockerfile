FROM rdehuyss/docker-ubuntu-14.04.2

# Ubuntu 14.04.2 Docker Base with SSH login
MAINTAINER Ronald Dehuysser <ronald.dehuysser@vdab.be>

# Install JAVA
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:webupd8team/java -y
RUN apt-get update
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN apt-get install oracle-java8-installer -y
RUN apt-get install oracle-java8-set-default
