## for docker-engine
remote_file '/etc/yum.repos.d/docker.repo' do
    owner "root"
    group "root"
    mode '0644'
    source "../../files/docker/docker.repo"
end

package 'docker-engine'

service 'docker' do
  action [:enable, :start]
end


## for docker-compose
compose_binary = File.join('/usr/bin', 'docker-compose')
# curl -L "https://github.com/docker/compose/releases/download/1.21.0/docker-compose-Linux-x86_64" > files/docker/docker-compose
remote_file compose_binary do
  mode '0755'
  source "../../files/docker/docker-compose"
end

## pull images
execute 'docker pull' do
    command <<-EOS
    docker pull fluent/fluentd:latest
    EOS
    not_if "docker images | grep 'fluent'"
end
