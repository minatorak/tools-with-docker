QUEUE_NAME := signal
ENGINE := podman
AUTH := -u user -p password
rabbitmqctl := $(ENGINE) exec -it rabbitmq rabbitmqctl $(AUTH)
rabbitmqadmin := $(ENGINE) exec -it rabbitmq rabbitmqadmin $(AUTH)

up:
	docker compose up -d

down:
	docker compose down

watch:
	while true; do rabbitmqadmin get queue=$(QUEUE_NAME); sleep 1; done

list_queues:
	$(rabbitmqctl) list_queues

get_queues:
	$(rabbitmqadmin) get queue=signal

list_plugin:
	podman exec -it rabbitmq rabbitmq-plugins list