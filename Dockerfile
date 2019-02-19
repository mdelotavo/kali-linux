FROM kalilinux/kali-linux-docker:latest

RUN apt update && apt -y full-upgrade

RUN apt update && apt -y install exploitdb

RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd

COPY authorized_keys /root/.ssh/authorized_keys

RUN apt-get update && apt-get install -y \
    curl \
    ftp \
    net-tools \
    nmap \
    vim \
    wget

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
