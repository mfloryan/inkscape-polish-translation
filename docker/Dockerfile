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

#configure VNC for remote access
RUN mkdir ~/.vnc
RUN x11vnc -storepasswd sodipodi ~/.vnc/passwd

VOLUME ["/inkscape/source"]

COPY build.sh /inkscape/
COPY run.sh /inkscape/

WORKDIR /inkscape/

CMD ["/bin/bash"]