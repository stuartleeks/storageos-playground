#!/bin/bash

while [ 1 -eq 1 ]; do
    ipAddress=$(kubectl get service storageos-lb --namespace=kube-system -o jsonpath='{.status.loadBalancer.ingress[0].ip}')

    if [[ $ipAddress == "" ]]; then
        # no record yet - nothing to do
        echo "waiting..."
    else
        # echo the export command
        echo "Run: 'export STORAGEOS_HOST=$ipAddress:5705'"
        echo "... and ensure that STORAGEOS_USERNAME and STORAGEOS_PASSWORD are set (e.g. in .bashrc)"
        echo "... then run 'storageos cluster health' to check connection"
        exit 0
    fi

    sleep 5s
done
