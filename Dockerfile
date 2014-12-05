FROM ubuntu:trusty

MAINTAINER Joshua Peper <joshua@peperzaken.nl>

RUN echo "deb http://archive.ubuntu.com/ubuntu trusty main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y python-pip 

RUN easy_install pip

RUN pip install askbot==0.7.49

VOLUME ["/data"]

ADD . /app/
ADD deploy/run.sh /
RUN chmod +x run.sh && rm -r /app/deploy

EXPOSE 80
CMD ["/run.sh"]
