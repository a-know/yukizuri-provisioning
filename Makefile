.PHONY: all

# provision base: ## OPTIONS: target={webapp|yukizuri.moshimo.works}
# 	bundle exec itamae ssh -h ${target} -j recipes/base/a-know.json -u vagrant recipes/base/user.rb

# provision main: ## OPTIONS: target={webapp|yukizuri.moshimo.works}
# 	bundle exec itamae ssh -h ${target} -u a-know recipes/main/selinux.rb
# 	bundle exec itamae ssh -h ${target} -u a-know recipes/main/timezone.rb
# 	bundle exec itamae ssh -h ${target} -u a-know recipes/main/tools.rb
# 	bundle exec itamae ssh -h ${target} -u a-know recipes/main/dirs.rb
# 	bundle exec itamae ssh -h ${target} -u a-know recipes/main/nginx.rb
# 	bundle exec itamae ssh -h ${target} -u a-know recipes/main/supervisor.rb
# 	bundle exec itamae ssh -h ${target} -u a-know recipes/main/hostname.rb
# 	bundle exec itamae ssh -h ${target} -u a-know recipes/main/logrotate.rb

# provision prod: ## OPTIONS: target={webapp|yukizuri.moshimo.works}
# 	bundle exec itamae ssh -h ${target} -u a-know recipes/prod/td-agent.rb
# 	bundle exec itamae ssh -h ${target} -u a-know recipes/prod/mackerel.rb
# 	bundle exec itamae ssh -h ${target} -u a-know recipes/prod/certbot.rb

provision-production: ## Target VM : Google Compute Engine
	bundle exec itamae ssh -h yukizuri.moshimo.works -j nodes/webapp_production.json -u a-know provisioning.rb