.DEFAULT_GOAL := help
.PHONY: help

help:
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
	| sed -n 's/^\(.*\): .*## \(.*\)/\1\t\2/p' \
	| column -t -s $$'\t'

deps: ## Install build dependencies
	uv sync

serve: ## Start a webserver serving the book locally
	cd website && jupyter-book start

book: ## Build the book and export as HTML
	cd website && jupyter-book build --html

strict: ## Build the book stopping on errors
	cd website && jupyter-book build --html --strict

ci: ## Build the book in a non-interactive environment (for CI)
	cd website && jupyter-book build --html --ci

ast: ## Build AST only
	cd website && jupyter-book build

clean: ## Clean any build outputs and artifacts
	jupyter-book clean --all --yes ./website/_build
