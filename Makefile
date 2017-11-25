.PHONY: all

provision base: ## OPTIONS: target={webapp|yukizuri.moshimo.works}
	bundle exec itamae ssh -h ${target} -j recipes/base/a-know.json -u vagrant recipes/base/user.rb
