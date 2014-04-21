#

MODULES = acid hy lenin postgres snitch uwsgi

all: $(MODULES)

clean:
	for x in $(MODULES); do make -C $$x clean; done

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


.PHONY: acid hy lenin postgres snitch uwsgi clean
