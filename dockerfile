FROM centos:latest
MAINTAINER mejiciel@gmail.com
RUN yum -y update
ADD IFDS_ROOT_CA /etc/pki/ca-trust/source/anchors/
RUN	yum -y install ca-certificates
RUN	update-ca-trust force-enable
RUN	update-ca-trust extract
RUN yum -y install https://centos7.iuscommunity.org/ius-release.rpm
RUN yum -y install git
RUN yum -y groups install "GNOME Desktop" 
