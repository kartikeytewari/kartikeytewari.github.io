# build and host the website on localhost
# default option
dvi:
	bundle exec jekyll serve --watch --baseurl ''

# opens the default browser to watch the website in deployment
open:
	open http://127.0.0.1:4000/
