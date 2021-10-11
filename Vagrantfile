# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.synced_folder "./cyphonic", "/vagrant", disabled: false
  config.vm.boot_timeout = 600

  config.vm.define :as do |as|
    DefineMachineEnvironment as, "2", "2048"
    as.vm.hostname = "as.local.cyphonic.org"
    as.vm.box = "generic/ubuntu2010"
    as.vm.network :public_network,
            :ip => "10.0.1.221",
            :bridge => "enp2s0",
            :dev => "enp2s0"
    as.vm.network :public_network,
            :ip => 'fde4:db8::101',
            :netmask => "8",
            :bridge => "enp2s0",
            :dev => "enp2s0"
  end
  
  config.vm.define :nms do |nms|
    DefineMachineEnvironment nms, "2", "2048"
    nms.vm.hostname = "nms01.local.cyphonic.org"
    nms.vm.box = "generic/ubuntu2010"
    nms.vm.network :public_network,
            :ip => "10.0.1.222",
            :bridge => "enp2s0",
            :dev => "enp2s0"
    nms.vm.network :public_network,
            :ip => 'fde4:db8::102',
            :netmask => "8",
            :bridge => "enp2s0",
            :dev => "enp2s0"
  end
  
  config.vm.define :trs do |trs|
    DefineMachineEnvironment trs, "2", "2048"
    trs.vm.hostname = "trs01.local.cyphonic.org"
    trs.vm.box = "generic/ubuntu2010"
    trs.vm.network :public_network,
            :ip => "10.0.1.223",
            :bridge => "enp2s0",
            :dev => "enp2s0"
    trs.vm.network :public_network,
            :ip => 'fde4:db8::103',
            :netmask => "8",
            :bridge => "enp2s0",
            :dev => "enp2s0"
  end

  config.vm.define :mysql do |mysql|
    DefineMachineEnvironment mysql, "1", "1024"
    mysql.vm.hostname = "mysql"
    mysql.vm.box = "generic/ubuntu2010"
    mysql.vm.network :public_network,
            :ip => "10.0.1.224",
            :bridge => "enp2s0",
            :dev => "enp2s0"
    mysql.vm.provision :shell, path: "mysql.sh"
  end

  config.vm.define :redis do |redis|
    DefineMachineEnvironment redis, "1", "1024"
    redis.vm.hostname = "redis"
    redis.vm.box = "generic/ubuntu2010"
    redis.vm.network :public_network,
            :ip => "10.0.1.225",
            :bridge => "enp2s0",
            :dev => "enp2s0"
    redis.vm.provision :shell, path: "redis.sh"
  end

  ## Define macros
  def DefineMachineEnvironment(tmp, use_cpu, use_memory)
    tmp.vm.provider :libvirt do |libvirt|
      libvirt.cpus   = use_cpu
      libvirt.memory = use_memory
    end
  end
end
