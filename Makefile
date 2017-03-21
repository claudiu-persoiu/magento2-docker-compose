.PHONY: clean bash setup

clean:
	docker-compose exec phpfpm magento cache:clean

bash:
	docker-compose exec phpfpm bash

setup:
	mkdir -p magento2/html && docker-compose build && docker-compose run --rm setup
