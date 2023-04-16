
all:
	bundle install --path vendor/bundle
	bundle exec jekyll serve
.PHONY: all

