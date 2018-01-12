#!/bin/bash

# Switch to kube-system namespace
kubens kube-system

kubectl expose service  storageos --type="LoadBalancer" --name=storageos-lb --port 5705 --target-port 5705

# Revert namespace
kubens -
