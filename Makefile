#

MODULES = acid hy lenin postgres snitch uwsgi

all: build

clean:
	for x in $(MODULES); do make -C $$x clean; done

build: $(MODULES)

rebuild: clean build

hy:
	make -C hy

acid: hy
	make -C acid

lenin: acid
	make -C lenin

snitch: acid
	make -C snitch

postgres:
	make -C postgres

uwsgi:
	make -C uwsgi


.PHONY: acid hy lenin postgres snitch uwsgi clean rebuild build
