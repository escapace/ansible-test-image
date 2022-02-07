FROM quay.io/centos/centos:stream9

ENV container docker

RUN dnf -y update && \
    dnf -y install sudo && \
    dnf clean all

RUN sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

CMD ["/bin/bash"]
