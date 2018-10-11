Vagrant.configure("2") do |config|
  config.vm.box = "generic/ubuntu1804"
  
  config.vm.provision "docker" do |d|
    d.build_image "/vagrant/docker",
      args: "-t buildenv/linuxqt"
    d.run "buildenv/linuxqt", 
      image: "buildenv/linuxqt:latest",
      args: "-p 2033:22"
  end
  
  config.vm.network "forwarded_port",
    host: 2033, guest: 2033

  config.vm.network "forwarded_port",
    host: 8081, guest: 80
end
