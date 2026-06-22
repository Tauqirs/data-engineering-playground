#!/bin/bash

BOOTSTRAP_SERVER=localhost:9092


topics=(
  patient_entry_topic
  patient_visit_topic
  diagnosis_topic
  lab_result_topic
  pharmacy_topic
  health_claims_topic
  insurance_claim_topic
  critical_patient_topic
)

for topic in "${topics[@]}"
do
  echo "Creating topic: $topic"

  kafka-topics \
    --create \
    --if-not-exists \
    --topic "$topic" \
    --bootstrap-server "$BOOTSTRAP_SERVER" \
    --partitions 3 \
    --replication-factor 1
done

echo "Current topics:"

kafka-topics \
  --list \
  --bootstrap-server "$BOOTSTRAP_SERVER"