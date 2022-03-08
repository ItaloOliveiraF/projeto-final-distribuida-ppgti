# Variables
DOCKER_IMAGE_LINTER=alvarofpp/python-linter
ROOT=$(shell pwd)
LINT_COMMIT_TARGET_BRANCH=origin/main

# Commands
.PHONY:
down:
	@docker-compose down

.PHONY:
up:
	@docker-compose up

.PHONY:
up-silent:
	@docker-compose up -d

.PHONY: lint
lint:
	@docker pull ${DOCKER_IMAGE_LINTER}
	@docker run --rm -v ${ROOT}:/app ${DOCKER_IMAGE_LINTER} " \
		lint-commit ${LINT_COMMIT_TARGET_BRANCH} \
		&& lint-yaml \
		&& lint-markdown \
		&& lint-python"

.PHONY: logs
logs:
	@docker-compose logs --follow