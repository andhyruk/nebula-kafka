#!/bin/bash

# Start the first process
set -m
ls Downloads
cd kafka
tar -xvzf /Downloads/kafka.tgz --strip 1
/kafka/bin/zookeeper-server-start.sh /kafka/config/zookeeper.properties &
/kafka/bin/kafka-server-start.sh /kafka/config/server.properties > /kafka/kafka.log 2>&1
