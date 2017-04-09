.PHONY: build
build:
	docker build -t bitcoin .

.PHONY: exec
exec: build
	docker run -it --rm bitcoin sh

.PHONY: run
run: build
	docker run -it --rm bitcoin
