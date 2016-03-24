#!/bin/bash
cd /vagrant
tar xvzf splunk-6.3.3-f44afce176d0-Linux-x86_64.tgz -C /opt
sudo /opt/splunk/bin/splunk start --accept-license
