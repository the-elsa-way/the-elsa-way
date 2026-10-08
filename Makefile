.DEFAULT_GOAL := help
.PHONY: help deps toolbox toolbox-check serve book strict ci ast clean

help:
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
	| sed -n 's/^\(.*\): .*## \(.*\)/\1\t\2/p' \
	| column -t -s $$'\t'

deps: ## Install build dependencies
	uv sync

toolbox: ## Validate the toolbox YAML and generate its pages
	uv run python scripts/build_toolbox.py

toolbox-check: ## Validate the toolbox YAML without generating pages
	uv run python scripts/build_toolbox.py --check

serve: toolbox ## Start a webserver serving the book locally
	cd website && uv run jupyter-book start

book: toolbox ## Build the book and export as HTML
	cd website && uv run jupyter-book build --html

strict: toolbox ## Build the book stopping on errors
	cd website && uv run jupyter-book build --html --strict

ci: toolbox ## Build the book in a non-interactive environment (for CI)
	cd website && uv run jupyter-book build --html --ci

ast: toolbox ## Build AST only
	cd website && uv run jupyter-book build

clean: ## Clean any build outputs and artifacts
	uv run jupyter-book clean --all --yes ./website/_build
