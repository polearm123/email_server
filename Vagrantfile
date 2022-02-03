

Vagrant.configure("2") do |config|
  config.vm.provision "shell", inline: "echo Hello"
  config.vm.network "private_network", type: "dhcp"

  config.vm.define "email1" do |email1|
    email1.vm.hostname = "email1"
    email1.vm.provision "shell", path:"assignment2/lab1scripts.sh"
    email1.vm.box = "ubuntu/focal64"
    email1.vm.network "private_network", ip:"192.168.50.51", virtualbox__intnet:"intnet1"
    email1.vm.network "private_network", ip:"192.168.51.51", virtualbox__intnet:"intnet2"
    email1.vm.network "forwarded_port", guest:22, host:10005, host_ip:"127.0.0.1"

  end

  config.vm.define "email2" do |email2|
    email2.vm.hostname = "email2"
    email2.vm.box = "ubuntu/focal64"
    email2.vm.provision "shell", path: "assignment2/lab2scripts.sh"
    email2.vm.network "private_network", ip:"192.168.50.53", virtualbox__intnet:"intnet1"
    email2.vm.network "forwarded_port", guest:22, host:10006, host_ip:"127.0.0.1"
  end



  config.vm.define "email3" do |email3|
    email3.vm.hostname = "email3"
    email3.vm.box = "ubuntu/focal64"
    email3.vm.network "private_network", ip:"192.168.51.54", virtualbox__intnet:"intnet2"
    email3.vm.network "forwarded_port", guest:22, host:10007, host_ip:"127.0.0.1"
  end

end
