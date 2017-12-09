directory '/var/www/yukizuri/app' do
    owner 'a-know'
    group 'a-know'
    mode  '0755'
    action :create
end

directory '/var/www/yukizuri/log' do
    owner 'a-know'
    group 'a-know'
    mode  '0755'
    action :create
end
