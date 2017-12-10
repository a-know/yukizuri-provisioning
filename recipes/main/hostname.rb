hostname = 'yukizuri.moshimo.works'

file '/etc/hostname' do
  content "#{hostname}\n"
  notifies :run, 'execute[run hostnamectl]'
end

execute 'run hostnamectl' do
  command "hostnamectl set-hostname #{hostname}"
  action :nothing
end

remote_file '/etc/profile.d/network.sh' do
  source "../../files/hostname/network.sh"
  action :create
end
