FROM ubuntu:trusty
MAINTAINER Nick Saika <nicksaika@gmail.com>

# Update the apt cache, any installed packages, and then install the required
# packages for taiga-back.
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install \
	build-essential \
	binutils-doc \
	autoconf \
	flex \
	bison \
	libjpeg-dev \
	libfreetype6-dev \
	zlib1g-dev \
	libzmq3-dev \
	libgdbm-dev \
	libncurses5-dev \
	automake \
	libtool \
	libffi-dev \
	curl \
	git \
	tmux \
	python3 \
	python3-pip \
	python-dev \
	python3-dev \
	python-pip \
	virtualenvwrapper \
	libxml2-dev \
	libxslt-dev

# Clone the taiga-back repository.
RUN git clone https://github.com/taigaio/taiga-back.git /taiga-back
WORKDIR /taiga-back
RUN git checkout stable
RUN mkvirtualenv -p /usr/bin/python3.4 taiga && \
	pip install -r requirements
