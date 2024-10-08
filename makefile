.PHONY: help serve deploy install

help:
	@echo "Usage: make <command>"
	@echo "Commands:"
	@echo "  install   Install the dependencies"
	@echo "  serve     Start the MkDocs server"
	@echo "  deploy    Deploy the MkDocs site to GitHub Pages"
	@echo "  update    Update python dependencies"

install:
	@echo "Installing dependencies..."
	@poetry install --no-root

update:
	@echo "Updating python dependencies..."
	@poetry update

serve:
	@echo "Starting MkDocs server..."
	@mkdocs build --clean
	@poetry run mkdocs serve -a 0.0.0.0:8282

deploy:
	@echo "Deploying MkDocs site to GitHub Pages..."
	@poetry run mkdocs gh-deploy --force
