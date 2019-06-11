Vagrant.configure("2") do |config|
  config.vm.box = "debian/contrib-buster64"
  config.disksize.size = "12GB"

  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
  end

  config.vm.synced_folder ".", "/vagrant"
  config.ssh.forward_x11 = false

  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "playbook.yml"
    ansible.verbose = "true"
    ansible.compatibility_mode = "2.0"
  end
end
