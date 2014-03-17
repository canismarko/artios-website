REMOTE=mwolf@simon.artiosonline.com:/srv/artios-public/
BUILD=jekyll build --config _config.yml,_config-deploy.yml

all: assets/main.min.css
	$(BUILD)

assets/main.min.css: assets/main.less
	lessc assets/main.less assets/main.css
	yuicompressor -o assets/main.min.css assets/main.css

deploy: all
	rsync -alvz --del _site/ $(REMOTE)

serve:
	jekyll serve --watch
