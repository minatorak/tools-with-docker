
server=kafka1
port=9092
topic=first_topic


kafka-create-topic:
	docker compose exec ${server} kafka-topics.sh --create --topic ${topic} --partitions 1 --replication-factor 1 --bootstrap-server ${server}:${port}

kafka-consume-topic:
	docker compose exec ${server} kafka-console-consumer.sh --topic ${topic} --from-beginning --bootstrap-server ${server}:${port}

kafka-publish:
	docker compose exec ${server} kafka-console-producer.sh --topic ${topic} --broker-list ${server}:${port}