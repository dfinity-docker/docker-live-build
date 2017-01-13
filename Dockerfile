FROM debian:stretch
RUN apt-get update && apt-get install -y \
	git \
	live-build \
	openssh-server \
	procps \
	vim
RUN mkdir /build
# RUN mkdir /var/run/sshd
# CMD /usr/sbin/sshd -D
WORKDIR /build
