BUILD=jekyll build --config _config.yml,_config-deploy.yml

all: assets/main.min.css
	$(BUILD)

assets/main.min.css: assets/main.less
	lessc assets/main.less assets/main.css
	yuicompressor -o assets/main.min.css assets/main.css

deploy: all
	s3_website push

serve:
	jekyll serve --watch
