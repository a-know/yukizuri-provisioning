remote_file '/etc/systemd/system/yukizuri.service' do
    owner "root"
    group "root"
    mode '0644'
    source "../../files/systemd/yukizuri.service"
end
