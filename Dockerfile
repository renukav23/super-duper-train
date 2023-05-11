FROM debian:stable-slim

RUN mkdir -p /var/run/sshd

RUN apt-get update && apt-get install -y openssh-server

RUN useradd -rm -d /home/remote_user -s /bin/bash remote_user && \
    echo remote_user:password1234 | chpasswd

RUN mkdir /home/remote_user/.ssh && \
    chmod 700 /home/remote_user/.ssh

COPY id_rsa.pub /home/remote_user/.ssh/authorized_keys

RUN chown remote_user:remote_user -R /home/remote_user/.ssh && \
    chmod 600 /home/remote_user/.ssh/authorized_keys

CMD [ "/usr/sbin/sshd" , "-D" ]

