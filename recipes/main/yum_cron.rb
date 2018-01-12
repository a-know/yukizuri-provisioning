service "yum-cron" do 
    action :disable
end

remote_file '/etc/yum/yum-cron.conf' do
    owner "root"
    group "root"
    mode '0644'
    source "../../files/yum-cron/yum-cron.conf"
end
