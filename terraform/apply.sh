#!/bin/sh

set -eux
cd /opt/config
until terraform init; do echo "Waiting for state store" && sleep 3; done
until terraform apply -auto-approve -parallelism=30 -refresh=false; do echo "Waiting for network convergence" && sleep 3; done
