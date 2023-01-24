# build and host the website on localhost
start:
	bundle exec jekyll serve --watch --baseurl ''

# opens the default browser to watch the website in deployment
dev_open:
	open http://127.0.0.1:4000/

