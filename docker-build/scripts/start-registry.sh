#!/bin/bash

mkdir -p $REGISTRY_HOME/logs
nohup registry serve /etc/docker/registry/config.yml >>$REGISTRY_HOME/logs/registry.stdout.log 2>>$REGISTRY_HOME/logs/registry.stderr.log &

