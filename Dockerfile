FROM openjdk:8u111-jdk

MAINTAINER Julie Pitt <julie@yakticus.com>


RUN apt-get update && apt-get -y install xorg && cd /tmp && \
    wget http://github.com/scalabridge/curriculum/raw/master/doodle.zip && \
    cd /tmp && \
    unzip doodle.zip && \
    mv doodle/ /opt/ && \
    cd /opt/doodle

WORKDIR /opt/doodle
CMD ["./sbt.sh"]






