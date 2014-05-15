# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.provider "docker" do |d|

    d.build_dir = "."

    d.ports = ["8080:5000"]

    # Is this necessary if EXPOSE is used in Dockerfile?
    d.expose = ["5000"]

    d.remains_running = true

    #d.volumes = ["/shared"]

    #d.has_ssh = true

  end

  #config.vm.network "private_network", ip: "192.168.99.99"

  config.vm.network "forwarded_port", guest: 8080, host: 8181

  #config.vm.synced_folder "~/Documents/shared", "/shared"

end