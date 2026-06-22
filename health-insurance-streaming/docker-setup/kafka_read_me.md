

kafka-topics.sh  --create  --topic patient_entry_topic  --bootstrap-server localhost:9092  --partitions 3   --replication-factor 1

docker cp create_topics.sh kafka:/tmp/create_topics.sh
kafka-topics -list -bootstrap-server localhost:9092
docker exec -it kafka bash /tmp/create_topics.sh      