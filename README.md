# Introduction

This project is a small setup for testing Ansible locally using Vagrant. The Vagrantfile launches two Vagrant-boxes, one for Ansible and one for Ansible to control.

# Usage

The setup was created in Windows 7. Clone the project to your local drive, navigate to the root directory and just

```shellscript
vagrant up
```

When both servers are up'ed you can

```shellscript
putty -ssh -pw vagrant vagrant@192.168.10.0
```

in order to 'putty' access your newly up'ed Vagrant box. The provisioning script should have taken care of installing Ansible on the machine. You can check is everything is working by trying

```shellscript
vagrant@ansible:~$ ansible --version
ansible 1.4.4
```

If you have [putty](http://www.putty.org/) on your PATH you can also just use the Launch-Vagrant-Ansible-Putty.cmd file. It will 'up' the servers and launch Putty automatically when both servers are up'ed.

When inside the Ansible server you can start playing around with Ansible. Try the following:

```shellscript
vagrant@ansible:~$ cd books
vagrant@ansible:~/books$ ansible all -m ping
192.168.20.0 | success >> {
    "changed": false,
    "ping": "pong"
}
```
