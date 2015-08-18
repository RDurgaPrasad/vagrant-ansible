sudo apt-get -y update
sudo apt-get -y install software-properties-common
sudo apt-get -y install ansible

# fix permissions on private key file
chmod 600 /home/vagrant/.ssh/id_rsa

# add subject host to known_hosts (IP is defined in Vagrantfile)
ssh-keyscan -H 192.168.20.0 >> /home/vagrant/.ssh/known_hosts
chown vagrant:vagrant /home/vagrant/.ssh/known_hosts
