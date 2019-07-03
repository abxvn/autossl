OUTPUT_PATH ?= "dist/autossl"

build:
	bash bin/builder.sh ${OUTPUT_PATH}
	chmod 700 ${OUTPUT_PATH}

test:
	docker-compose up -d ubuntu-test
	docker-compose exec ubuntu-test bash

.PHONY: build