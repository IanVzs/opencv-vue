.PHONY: install run push_this
all: install run

run:
	npm run serve
	
build:
	npm run build

install:
	npm install

init: install
	@echo "正在安装"

push_this:
	git commit -am "new deploy"
	git push origin dev

help:
	@echo "make: run on local"
	@echo "make install: install build tools"
	@echo "make init: init submodules && environment"
