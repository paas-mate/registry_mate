#!/bin/bash

mkdir -p $REGISTRY_HOME/logs
nohup $REGISTRY_HOME/mate/registry_mate >>$REGISTRY_HOME/logs/registry_mate.stdout.log 2>>$REGISTRY_HOME/logs/registry_mate.stderr.log

