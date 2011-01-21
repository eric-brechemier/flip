.PHONY: all

all:
	@echo "> Initializing submodules..."
	@git submodule update --init
	@echo "> Building lb_js_scalableApp..."
	@ant -f vendor/lb_js_scalableApp/build/build.xml

clean:
	@for i in `git submodule status | awk '{ print $$2 }'`; do rm -Rf $$i; done