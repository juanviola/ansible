Vagrant.configure(2) do |config|
    config.vm.define :linux do |linux|
        linux.vm.box = "hashicorp/precise32"
        linux.vm.network "private_network", ip: "172.16.10.104"
        linux.vm.hostname = "linux"
        linux.vm.provider :virtualbox do |vb|
            vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
        end
        config.vm.synced_folder "/Users/jmviola/Projects/Dev/", "/var/www", :nfs => true
        config.vm.post_up_message = "***********************\n\nadd the following to your /etc/hosts\n\n172.16.10.104 app.dev\n\n"
    end
end
