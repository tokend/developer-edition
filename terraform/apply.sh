#!/bin/sh

set -eux

cd /opt/config

terraform init
terraform apply -auto-approve --state=/opt/state/terraform.tfstate -parallelism=30 