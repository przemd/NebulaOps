#!/usr/bin/env bash
set -euo pipefail

terraform_dir="${1:-terraform}"

if [[ ! -d "$terraform_dir" ]]; then
  echo "Terraform directory not found: $terraform_dir" >&2
  exit 1
fi

cd "$terraform_dir"

terraform fmt -recursive
terraform init -upgrade
terraform validate

echo "NebulaOps Starforge initialized."
