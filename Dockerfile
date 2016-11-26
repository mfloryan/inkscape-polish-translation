FROM ubuntu:latest

RUN apt-get update && apt-get install --yes \
	vim \
	intltool \
	cmake \
	software-properties-common \
	bzr \
	x11vnc \
	xvfb

RUN add-apt-repository -y ppa:inkscape.dev/trunk

RUN apt-get update \
	&& apt-get -y build-dep inkscape \
	&& rm -rf /var/lib/apt/lists/*

VOLUME ["/opt/source"]
WORKDIR /opt/source

COPY build.sh /opt/

CMD ["/bin/bash"]