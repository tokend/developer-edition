#!/bin/sh

set -eux

until terraform init /opt/config; do echo "Waiting for state store" && sleep 3; done
until terraform apply -auto-approve -parallelism=30 -refresh=false /opt/config; do echo "Waiting for network convergence" && sleep 3; done
