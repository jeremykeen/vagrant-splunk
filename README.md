vagrant-splunk
---------------

# Description

Vagrantfile that creates a single node Splunk Enterprise installation.  Optionally install ScaleIO SDC and connects to vagrant-scaleio instanace found in the repo - https://github.com/emccode/vagrant

# Usage

1. Clone the files to your local machine from github
2. Download the splunk linux install (currently hard-coded to use splunk-6.3.3-f44afce176d0-Linux-x86_64.tgz) and place it in the vagrant directory containing the Vagrantfile
3. Donwload and extract the ScaleIO linux binaries for SDC installation
4. modify splunk.sh with Scaleio and and Splunk filename
5. `cd vagrant-splunk`
6. Run `vagrant up`

You must have the splunk and ScaleIO files downloaded and in the proper directories as seen [here](images/vagrant-splunk-files.png) until I make this more dynamic.


### Launch Splunk
After the installation has completed, simply point your web browser to http://192.168.50.21:8000 to login in to Splunk

# Roadmap
Fully integrated option with ScaleIO deployment.

-ScaleIO deploys, then Splunk with volumes already provisioned and mapped to configure default splunk indexes on ScaleIO volume(s)

# Examples for getting data into splunk
Use this article to configure syslog on mac to point to splunk:
https://wiki.splunk.com/Community:HowTo_Configure_Mac_OS_X_Syslog_To_Forward_Data

loggen to send syslog data:
yum install syslog-ng
loggen --rate 10000 --interval 120 --syslog-proto 192.168.50.21 514

Syslog from ScaleIO:
scli --start_remote_syslog --remote_syslog_server_ip 192.168.50.21 --remote_syslog_server_port 514 --mdm_ip 192.168.50.13

send log via OS X
logger -s -p user.info Hello World! log entry.
monitor events sent via mac  sudo tcpdump -i vboxnet1 host 192.168.50.21 and udp port 514
