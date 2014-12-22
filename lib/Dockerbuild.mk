#
#
NAMESPACE = $(shell docker info 2>/dev/null | awk '/^Username:/ { print $$2 }')
# Thanks to tianon for that snippit.
IMAGE_ID = $(NAMESPACE)/$(IMAGE_NAME)

CURRENT_ID = $(shell docker images -q $(IMAGE_ID))
IMAGE_BUILD = docker build \
		          --rm=true \
		          -t $(IMAGE_ID) \
		          .

build:
ifeq ($(CURRENT_ID),)
	$(IMAGE_BUILD)
else
	@echo "$(IMAGE_ID) is tag $(CURRENT_ID)"
endif

rebuild:
	$(IMAGE_BUILD)

clean:
ifeq ($(CURRENT_ID),)
	@echo "$(IMAGE_ID) - nothing to clean"
else
	docker rmi $(CURRENT_ID)
endif

push:
ifeq ($(CURRENT_ID),)
	@echo "$(IMAGE_ID) - nothing to push"
else
	docker push $(IMAGE_ID)
endif
