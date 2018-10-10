Vagrant.configure("2") do |config|
  config.vm.box = "generic/ubuntu1804"
  
  # The ubuntu box will be configured by a docker provisioner.
  # The docker image will be build on vagrant up,
  # but first, the data to build from needs to be copied to the machine.
  config.vm.synced_folder "./docker", "/vagrant/docker", type: "rsync",
    rsync__exclude: ".git/"
    
  config.vm.provision "docker" do |d|
    d.build_image "/vagrant/docker"
    d.ports "2033:22"
  end
  
  config.vm.network "forwarded_port",
    guest: 2033, host: 22
end
