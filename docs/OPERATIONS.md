# NebulaOps Operations Guide

## Terraform workflow
- **Format & validate**: `./scripts/nebula-init.sh`
- **Plan**: `./scripts/nebula-plan.sh`
- **Apply**: `cd terraform && terraform apply`

## Remote state bootstrap
1. Create a dedicated state resource group and storage account.
2. Update `terraform/backend.tf` with your resource group, storage account, and container.
3. Re-run `terraform init` to migrate state.

See `docs/STATE_BOOTSTRAP.md` for the scripted bootstrap flow.

## Runbook operations
- Import `automation/runbooks/stellar-drift.ps1` into Azure Automation.
- Schedule it daily or tie it to pipeline events.
- Add webhook endpoints for notifications.

## Observability tips
- Connect Log Analytics to Azure Monitor alerts.
- Use tags to filter metrics by environment and mission.
