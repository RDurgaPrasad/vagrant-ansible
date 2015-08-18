# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
	
	config.vm.define "server" do |server|
		server.vm.box = "server"
		server.vm.box_url = "http://files.vagrantup.com/precise32.box"
		server.vm.hostname = "server"
		server.vm.synced_folder "data_server", "/data"
		server.vm.network "private_network",ip: "10.1.1.1"
		server.vm.provision :file do |file|
			file.source = 'C:\Users\{{username}}\.vagrant.d\insecure_private_key'
			file.destination = '/home/vagrant/.ssh/id_rsa'
		end
		server.vm.provision :shell, path: "data_server/provision-server.sh"
		server.ssh.forward_agent = true
	end

	config.vm.define "ansible" do |ansible|
		ansible.vm.box = "ansible"
		ansible.vm.box_url = "http://files.vagrantup.com/precise32.box"
		ansible.vm.hostname = "ansible"
		ansible.vm.synced_folder "data_ansible", "/data"
		ansible.vm.provision :file do |file|
			file.source = 'C:\Users\{{username}}\.vagrant.d\insecure_private_key'
			file.destination = '/home/vagrant/.ssh/id_rsa'
		end
		ansible.vm.provision "file", source: "data_ansible/.profile", destination: "/home/vagrant/.profile"
		ansible.vm.provision "file", source: "data_ansible/books", destination: "/home/vagrant"
		ansible.vm.provision "shell", path: "data_ansible/provision-ansible.sh"
		ansible.vm.network "private_network", ip: "10.0.0.0"
	end
	
end
