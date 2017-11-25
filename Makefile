.PHONY: all

provision base: ## OPTIONS: target={webapp|yukizuri.moshimo.works}
	bundle exec itamae ssh -h ${target} -j recipes/base/a-know.json -u vagrant recipes/base/user.rb

provision main: ## OPTIONS: target={webapp|yukizuri.moshimo.works}
	bundle exec itamae ssh -h ${target} -u a-know recipes/main/dirs.rb
