# -*- mode: ruby -*-
# vi: set ft=ruby :

# Crear y configurar una instancia de AWS
Vagrant.configure("2") do |config|
    
  config.vm.network "forwarded_port", guest: 4440, host: 4444
    config.vm.define "vagrant_rundeck", primary: true, autostart: true do |node|
        # Provider
        node.vm.provider "virtualbox" do |vb|
          vb.memory = "1024"
          vb.cpus = 1
          vb.name = "vagrant_rundeck"
          vb.gui = false
        end
        # Image
        node.vm.box = "generic/ubuntu1804" # Ubuntu 18.04 LTS
        node.vm.boot_timeout = 600
        # Network
        node.vm.network "private_network", ip: "192.168.100.100"
      end

    #Aprovisionar instancia AWS
    config.vm.provision "ansible" do |ansible|
      ansible.playbook = "provision.yml"
      ansible.host_key_checking = "false"
    end 
end