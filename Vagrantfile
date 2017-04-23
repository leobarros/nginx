# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.define :web do |config|
    config.vm.hostname = "web.testlabs.com.br"
    config.vm.box_check_update = true
    config.vm.box = "puppetlabs/ubuntu-16.04-64-puppet"
    config.vm.box_url = "https://atlas.hashicorp.com/puppetlabs/boxes/ubuntu-16.04-64-puppet"
    # editar conforme a sua rede
    config.vm.network "private_network", ip: "192.168.60.199"
    config.vm.network "forwarded_port", guest: 80, host: 8080
    config.vm.network "forwarded_port", guest: 443, host: 4444
    
    #VM CONFIG
    config.vm.provider "virtualbox" do |virtualbox|
      virtualbox.customize [ "modifyvm", :id, "--cpus", "1" ]
      virtualbox.customize [ "modifyvm", :id, "--memory", "512" ]
      virtualbox.gui = false
    end
    #FIM VM CONFIG
  end

  config.vm.define :web_centos7 do |config|
    config.vm.hostname = "web_centos7.testlabs.com.br"
    config.vm.box_check_update = true
    config.vm.box = "puppetlabs/centos-7.2-64-puppet"
    config.vm.box_url = "https://atlas.hashicorp.com/puppetlabs/boxes/centos-7.2-64-puppet"
    # editar conforme a sua rede
    config.vm.network "private_network", ip: "192.168.60.198"
    config.vm.network "forwarded_port", guest: 80, host: 8081
    config.vm.network "forwarded_port", guest: 443, host: 4445

    #VM CONFIG
    config.vm.provider "virtualbox" do |virtualbox|
      virtualbox.customize [ "modifyvm", :id, "--cpus", "1" ]
      virtualbox.customize [ "modifyvm", :id, "--memory", "512" ]
      virtualbox.gui = false
    end
    #FIM VM CONFIG
  end

  #PUPPET
  config.vm.provision "puppet" do |puppet|
    puppet.environment_path = "environments"
    puppet.environment = "test"
  end
  #FIM PUPPET
end
