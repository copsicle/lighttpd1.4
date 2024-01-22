FROM redhat/ubi8
ENV JAVA_HOME=/opt/java/openjdk
RUN yum install -y libtool pcre2-devel lua lua-libs nettle openssh-server java-17-openjdk-devel
RUN sed -i 's|session    required     pam_loginuid.so|session    optional     pam_loginuid.so|g' /etc/pam.d/sshd && \
    mkdir -p /var/run/sshd && \
    adduser jenkins -p jenkins -m && \
    mkdir /home/jenkins/.ssh
RUN ssh-keygen -q -t rsa -N '' -f /etc/ssh/ssh_host_rsa_key
COPY /mnt/c/Users/Gonen/nopass.pub /home/jenkins/.ssh/
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]