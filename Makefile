VERSION=v2.3

default: revealjs
		@cp -rf revealjs/css/* css
		@cp -rf revealjs/js/* js
		@cp -rf revealjs/plugin/* plugin
		@du -bh js/reveal.*
		@du -bh css/reveal.*

revealjs:
		@git clone git://github.com/hakimel/reveal.js.git $@
		@cd revealjs && git pull && git checkout $(VERSION) && npm install && grunt && cd ..

.PHONY: default
