# Automation Runbook Blueprint

This directory holds the runbook plan for NebulaOps. Think of it as the operational star map.

## Suggested runbooks
- **Stellar Drift Audit**: checks for Terraform drift and posts to Teams/Slack.
- **Nova Cost Pulse**: gathers cost snapshots and flags anomalies.
- **Orbit Patch Loop**: schedules maintenance windows for VM/AKS nodes.

## Next steps
1. Add a PowerShell or Python runbook script.
2. Wire up a webhook to your alerting system.
3. Store secrets in Key Vault and reference them from runbooks.

## Included starter
- `runbooks/stellar-drift.ps1` is a placeholder runbook for drift checks. Replace the TODO section with your pipeline trigger or Terraform execution flow.
