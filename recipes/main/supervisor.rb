require 'itamae/secrets'
secrets = Itamae::Secrets(File.join(__dir__, '../../secret'))

package 'nss'

epel_repo = '/etc/yum.repos.d/epel.repo'

package 'epel-release'

execute 'epel.repo enabled=0' do
  action :run
  command <<-EOS
  sed -i 's/enabled=1/enabled=0/g' #{epel_repo}
  EOS
  not_if "cat #{epel_repo} | grep enabled=0"
end

package 'supervisor' do
  action :install
  options '--enablerepo=epel'
end

service 'supervisord'

template '/etc/supervisord.conf' do
  source "../../files/supervisor/supervisord.conf.erb"
  variables(username: secrets[:supervisor_webuser], password: secrets[:supervisor_webpass])
  notifies :start, "service[supervisord]"
end
