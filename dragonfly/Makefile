# Launch the Dragonfly Instance
up:
	docker compose up -d

down:
	docker compose down

# Log follow the dragonfly container
live-log:
	docker logs -f docker_dragonfly_1

network-up:
	docker network create trade-network

network-down:
	docker network rm trade-network