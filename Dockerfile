FROM confluentinc/cp-kafka-connect:6.1.0

RUN confluent-hub install --no-prompt debezium/debezium-connector-mysql:1.4.0 

COPY config.yml /kafka/etc/config.yml

COPY jmx_prometheus_javaagent.jar /kafka/etc/jmx_prometheus_javaagent.jar

EXPOSE 8083 
EXPOSE 8084
