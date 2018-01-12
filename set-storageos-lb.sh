#!/bin/bash

kubectl expose service  storageos --type="LoadBalancer" --namespace=kube-system --name=storageos-lb --port 5705 --target-port 5705
