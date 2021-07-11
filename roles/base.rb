include_recipe '../recipes/main/selinux.rb'
include_recipe '../recipes/main/timezone.rb'
include_recipe '../recipes/main/tools.rb'
include_recipe '../recipes/main/dirs.rb'
# include_recipe '../recipes/prod/epel-release.rb'
include_recipe '../recipes/prod/certbot.rb'
# https://docs.aws.amazon.com/ja_jp/AWSEC2/latest/UserGuide/SSL-on-amazon-linux-2.html
include_recipe '../recipes/main/nginx.rb'
include_recipe '../recipes/main/systemd.rb'
include_recipe '../recipes/main/logrotate.rb'
include_recipe '../recipes/main/yum_cron.rb'
include_recipe '../recipes/main/docker.rb'
