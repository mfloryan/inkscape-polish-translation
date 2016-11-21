#FROM ubuntu:trusty
FROM ubuntu:latest

RUN apt-get update
RUN apt-get --yes upgrade
RUN apt-get install --yes vim intltool software-properties-common bzr

WORKDIR /opt

VOLUME ["/opt/po-pl", "/opt/inkscape"]

RUN bzr branch lp:inkscape/0.92.x

CMD ["/bin/bash"]