dragonfly-up:
	podman compose --file ./dragonfly/docker-compose.yml up -d

dragonfly-down:
	podman compose --file ./dragonfly/docker-compose.yml down

rabbit-up:
	podman compose --file ./rabbitmq/compose.yaml up -d

rabbit-down:
	podman compose --file ./rabbitmq/compose.yaml down

kafka-up:
	podman compose --file ./kafka/kafka-compose.yml up -d

kafka-down:
	podman compose --file ./kafka/kafka-compose.yml down

network-create:
	podman network create trade-network

network-remove:
	podman network rm trade-network