Vagrant.configure("2") do |config|

  config.vm.define "mongodb" do |mongodb|
    mongodb.vm.box = "bento/ubuntu-16.04"
    mongodb.vm.hostname = 'mongodb'
    mongodb.vm.network :private_network, ip: "192.168.56.102"
    mongodb.vm.network :forwarded_port, guest: 22, host: 10222, id: "ssh"
    mongodb.vm.provision "shell", path: "template_file/mongo_userdata.tpl"

    mongodb.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--name", "mongodb"]
    end
  end



  config.vm.define "nodejs" do |nodejs|
    nodejs.vm.box = "bento/ubuntu-16.04"
    nodejs.vm.hostname = 'nodejs'
    nodejs.vm.network :private_network, ip: "192.168.56.101"
    nodejs.vm.provision "shell", path: "template_file/node_userdata.tpl"

    nodejs.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--name", "nodejs"]
    end
  end


end