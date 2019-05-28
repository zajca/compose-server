.PHONY: bootstrap
bootstrap:
	docker network create proxy

.PHONY: install
install:
	cp /home/khadas/.config/srv/git/docker/etc/docker-compose@.service /etc/systemd/system/docker-compose@.service
	systemctl enable docker-compose@traefik
	#systemctl enable docker-compose@prometheus
	#systemctl enable docker-compose@grafana
	systemctl enable docker-compose@smokeping
