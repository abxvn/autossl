OUTPUT_PATH ?= "dist/autossl"
TEST_OS ?= "ubuntu"

build:
	bash bin/builder.sh ${OUTPUT_PATH}
	chmod 700 ${OUTPUT_PATH}

test:
	docker-compose up -d ${TEST_OS}
	docker-compose exec ${TEST_OS} bash

.PHONY: build