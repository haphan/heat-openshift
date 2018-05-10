FROM centos:7

RUN yum install -y centos-release-openstack-pike epel-release && \
    yum install -y \
        yum install gcc gcc-c++ kernel-devel make python-devel \
        python-openstackclient \
        python-heatclient \
        python-pip \
        ansible \
        python-dns && \
    pip install shade