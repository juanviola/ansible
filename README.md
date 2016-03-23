# My Ansible Playbooks 

My commonly used playbook collection.

## Description
#### cakephp-development-server 
install: php5.5+, nginx, mysql, cakephp 3, phpmyadmin

##### How to run  
1) start the vagrant vm
```sh
$ cd /path/to/Vagrantfile
$ vagrant up linux
```

2) once the vm is running make sure that the ip address configured on cakephp-development-server/hosts is your vm
ip address and then run:

Note: the default vagrant password is "vagrant"

```sh
$ ansible-playbook cakephp-development-server/site.yaml -u vagrant -k -i cakephp-development-server/hosts
```