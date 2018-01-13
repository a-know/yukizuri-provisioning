.PHONY: all

provision-staging: ## Target VM : Google Compute Engine
	bundle exec itamae ssh -h yukizuri-stg.moshimo.works -j nodes/webapp_staging.json -u a-know provisioning.rb

provision-production: ## Target VM : Google Compute Engine
	bundle exec itamae ssh -h yukizuri.moshimo.works -j nodes/webapp_production.json -u a-know provisioning.rb