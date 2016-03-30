#!/bin/bash

#install scaleio pre-reqs
yum install numactl libaio -y

#install ScaleIO SDC
cd /vagrant/scaleio/ScaleIO_2.0.0_RHEL6_Download
MDM_IP=192.168.50.12,192.168.50.13 rpm -Uv EMC-ScaleIO-sdc-2.0-5014.0.el6.x86_64.rpm

#install splunk
cd /vagrant
tar xvzf splunk-6.3.3-f44afce176d0-Linux-x86_64.tgz -C /opt
sudo /opt/splunk/bin/splunk start --accept-license
