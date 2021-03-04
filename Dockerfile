FROM confluentinc/cp-kafka-connect:6.1.0

RUN confluent-hub install --no-prompt debezium/debezium-connector-mysql:1.4.0

EXPOSE 8083
