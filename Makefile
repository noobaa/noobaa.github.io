
all:
	bundle install --path vendor/bundle
	bundle exec jekyll serve
.PHONY: all

status:
	git status --ignored
.PHONY: status

clean:
	rm -rf vendor/ _site/
.PHONY: clean

