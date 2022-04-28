start:
	jekyll serve --livereload -H 0.0.0.0 --layouts ./_layouts -I --source .

# beware: Github uses 3.9 but this guys only have 3.8 and 4.0...
start-docker:
	docker run -it --rm   --volume="$$PWD:/srv/jekyll:Z" --publish 127.0.0.1:4000:4000  jekyll/jekyll:3.8   jekyll serve
