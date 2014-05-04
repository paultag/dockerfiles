#

MODULES = $(shell ls | grep -v 'Makefile' | grep -v 'lib')

all: build

clean:
	for x in $(MODULES); do make -C $$x clean; done

push:
	for x in $(MODULES); do make -C $$x push; done

build: $(MODULES)

rebuild: clean build

$(MODULES):
	make -C $@

lenin:
	make -C lenin

.PHONY: clean rebuild build $(MODULES)
