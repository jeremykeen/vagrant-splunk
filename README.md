vagrant-splunk
---------------

# Description

Vagrantfile that creates a single node Splunk Enterprise installation.

# Usage

1. Clone the files to your local machine from github
2. Download the splunk linux install (currently hard-coded to use splunk-6.3.3-f44afce176d0-Linux-x86_64.tgz) and place it in the vagrant directory containing the Vagrantfile
2. `cd vagrant-splunk`
4. Run `vagrant up`


### Launch Splunk
After the installation has completed, simply point your web browser to http://192.168.50.21:8000 to login in to Splunk
