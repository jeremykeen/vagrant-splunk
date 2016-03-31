# -*- mode: ruby -*-
# vi: set ft=ruby :

# vagrantfile that installs splunk enterprise on centos 6.5
# script also installs the ScaleIO SDC for demonstration purposes
vagrantbox="centos_6.5"
vagrantboxurl="https://github.com/2creatives/vagrant-centos/releases/download/v6.5.3/centos65-x86_64-20140116.box"
splunkip="192.168.50.21"

Vagrant.configure(2) do |config|

  config.vm.box = "#{vagrantbox}"
  vagrantboxurl="#{vagrantboxurl}"


  config.vm.network "private_network", ip: "#{splunkip}"
  config.vm.host_name = "splunk1"
  config.vm.provider "virtualbox" do |vb|
     # Display the VirtualBox GUI when booting the machine
     vb.gui = false

     # Customize the amount of memory on the VM:
     vb.memory = "1024"
   end

  # script to install splunk and ScaleIO SDC 
  config.vm.provision "shell" do |s|
    s.path = "scripts/splunk.sh"
  end
end
