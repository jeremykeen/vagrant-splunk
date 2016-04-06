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


### Launch Splunk
After the installation has completed, simply point your web browser to http://192.168.50.21:8000 to login in to Splunk

# Roadmap
Fully integrated option with ScaleIO deployment.

-ScaleIO deploys, then Splunk with volumes already provisioned and mapped to configure default splunk indexes on ScaleIO volume(s)
