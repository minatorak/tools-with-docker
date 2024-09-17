dragonfly up:
	podman compose -f ./dragonfly/docker-compose.yml up -d

dragonfly down:
	podman compose -f ./dragonfly/docker-compose.yml down

network create:
	podman network create trade-network
network remove:
	podman network rm trade-network