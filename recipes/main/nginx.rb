remote_file '/etc/yum.repos.d/nginx.repo' do
    owner "root"
    group "root"
    mode '0644'
    source "../../files/nginx/nginx.repo"
end

service 'nginx'

package 'nginx' do
    action :install
    options '--enablerepo=nginx'
end

remote_file '/etc/nginx/nginx.conf' do
    owner "root"
    group "root"
    mode '0644'
    source "../../files/nginx/nginx.conf"
    notifies :restart, "service[nginx]"
end

remote_file '/etc/nginx/conf.d/default.conf' do
    owner "root"
    group "root"
    mode '0644'
    source "../../files/nginx/default.conf"
    notifies :restart, "service[nginx]"
end

remote_file "/etc/logrotate.d/nginx" do
    source "../../files/logrotate/nginx"
end
  