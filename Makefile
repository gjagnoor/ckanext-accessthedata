dev:
	- docker-compose down -v
	- docker-compose -f docker-compose.dev.yml up -d --build
fix1:
	- run --rm ckan-dev /bin/bash -c "cd src_extensions && ckan get_involved init-db -c ../../production.ini"
fix: 
	- docker-compose -f docker-compose.dev.yml run ckan-dev bash -c "cd src_extensions && python3 setup.py develop"
