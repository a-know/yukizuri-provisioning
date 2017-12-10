package 'logrotate'

remote_file '/etc/logrotate.d/yukizuriapp' do
  owner "root"
  group "root"
  mode '0644'
  source "../../files/logrotate/yukizuriapp"
end

remote_file '/etc/logrotate.d/supervisor' do
  owner "root"
  group "root"
  mode '0644'
  source "../../files/logrotate/supervisord"
end
