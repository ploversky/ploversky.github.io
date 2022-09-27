default: serve

s serve:
	bundle exec jekyll serve --trace --livereload

build:
	JEKYLL_ENV=production bundle exec jekyll build --trace

deploy:
	rsync -avz ./_site/* ploversky:~/public_html/ploversky.net/blog
