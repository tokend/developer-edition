#!/bin/sh

set -eux

cd /opt/config

terraform init
until terraform apply -auto-approve --state=/opt/state/terraform.tfstate -parallelism=30; do echo "Waiting for network convergence" && sleep 3; done
