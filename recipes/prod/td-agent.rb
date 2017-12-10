remote_file '/home/a-know/install-redhat-td-agent3.sh' do
  owner "root"
  group "root"
  mode '0755'
  source "../../files/td-agent/install-redhat-td-agent3.sh"
end

execute 'Install td-agent' do
  # See http://docs.fluentd.org/articles/install-by-rpm
  command 'sh /home/a-know/install-redhat-td-agent3.sh'
  not_if 'rpm -q td-agent'
end

service 'td-agent'