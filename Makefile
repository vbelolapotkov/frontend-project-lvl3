install: install-deps

install-deps:
	npm ci

build:
	rm -rf dist
	NODE_ENV=production npx webpack

dev:
	npx webpack serve

lint:
	npx eslint .

test:
	npm test

test-coverage:
	npm test -- --coverage --coverageProvider=v8