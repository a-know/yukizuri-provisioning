execute 'install epel' do
    command "yes | sudo amazon-linux-extras install epel"
    action :run
end
