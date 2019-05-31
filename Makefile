.PHONY: bootstrap
bootstrap:
	docker network create proxy
	mkdir -p /srv/data/config/ums
	touch /srv/data/config/ums/UMS.conf
	touch /srv/data/config/ums/UMS.cred
	chmod -R 777 /srv/data

.PHONY: install
install:
	cp /srv/git/docker/etc/docker-compose@.service /etc/systemd/system/docker-compose@.service
	systemctl enable docker-compose@traefik
	systemctl enable docker-compose@smokeping
	systemctl enable docker-compose@nextcloud
	systemctl enable docker-compose@pirates
	systemctl enable docker-compose@folder

.PHONY: start
start:
	systemctl start docker-compose@traefik
	systemctl start docker-compose@smokeping
	systemctl start docker-compose@nextcloud
	systemctl start docker-compose@pirates
	systemctl start docker-compose@folder

.PHONY: restart
restart:
	systemctl restart docker-compose@traefik
	systemctl restart docker-compose@smokeping
	systemctl restart docker-compose@nextcloud
	systemctl restart docker-compose@pirates
	systemctl restart docker-compose@folder