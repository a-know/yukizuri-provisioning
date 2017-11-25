# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "bento/centos-7.1"
  config.ssh.insert_key = false

  config.vm.define 'webapp' do |web|
    web.vm.network 'private_network', ip: '192.168.33.20'
    web.cache.scope = :box if Vagrant.has_plugin? 'vagrant-cachier'
  end
end
