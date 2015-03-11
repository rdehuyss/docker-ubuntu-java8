FROM rdehuyss/docker-ubuntu-14.04.2

# Ubuntu 14.04.2 Docker Base with SSH login
MAINTAINER Ronald Dehuysser <ronald.dehuysser@vdab.be>

# Install JAVA
RUN apt-get update && \
	apt-get install software-properties-common -y && \
	add-apt-repository ppa:webupd8team/java -y && \
	apt-get update && \
	echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
	apt-get install oracle-java8-installer -y && \
	apt-get install oracle-java8-set-default && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
