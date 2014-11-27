FROM centos:centos6
MAINTAINER Bernardo Gomez Palacio <bernardo.gomezpalacio@gmail.com>

# Update base images.
RUN yum distribution-synchronization -y

# Install EPEL, MySQL, Zabbix release packages.
RUN yum install -y http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm

RUN yum makecache
# Additional Tools
RUN yum -y -q install passwd perl-JSON pwgen vim wget 
# install monit
RUN yum -y -q install monit
# install openssh-server
RUN yum -y -q install openssh-server
# Cleaining up.
RUN yum clean all
# Monit
ADD ./monitrc /etc/monitrc
RUN chmod 600 /etc/monitrc

# https://github.com/dotcloud/docker/issues/1240#issuecomment-21807183
RUN echo "NETWORKING=yes" > /etc/sysconfig/network

# Add the script that will start the repo.
ADD ./scripts/start.sh /start.sh
RUN chmod 755 /start.sh

EXPOSE 22 2812
CMD ["/start.sh"]
