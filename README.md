# NebulaOps: Starforge Automation Atlas

Welcome to **NebulaOps**, a star-themed DevOps constellation designed to launch Azure infrastructure with the elegance of a cosmic orchestra. This repo is your mission control for automating environments, provisioning cloud scaffolding with Terraform, and lighting up observability like a sky full of supernovas.

## Mission
Spin up a **Starforge** landing zone in Azure, seed automation runbooks, and choreograph deployments through pipelines that feel like warp-speed. This project is intentionally modular so you can remix the stardust to match your own galaxy.

## What’s inside
- **Terraform landing zone** for Azure resource groups, storage, Log Analytics, and automation. 
- **Starforge module** that standardizes naming, tags, and foundational resources.
- **Automation runbooks** starter for drift detection and operational routines.
- **Pipelines** starter to automate validation and deployments.
- **Ops scripts** to initialize, validate, and plan Terraform locally.

## Quick launch
1. **Install Terraform** (1.5+ recommended) and sign into Azure.
2. Copy `terraform/terraform.tfvars.example` to `terraform/terraform.tfvars` and set values.
3. Decide on state storage. For a quick spin-up, run with a local backend. For shared state, configure `terraform/backend.tf`.
4. Deploy the constellation:
   ```bash
   cd terraform
   terraform init
   terraform plan
   terraform apply
   ```

## Local helper scripts
Run the init/format/validate flow with:
```bash
./scripts/nebula-init.sh
```

Generate a plan with:
```bash
./scripts/nebula-plan.sh
```

Bootstrap remote state storage with:
```bash
./scripts/bootstrap-state.sh
```

## Terraform state (recommended)
`terraform/backend.tf` is a template for remote state. Replace the values with your storage account once created, then re-run:
```bash
cd terraform
terraform init
terraform plan
terraform apply
```

## Naming & theme
Your landing zone will create a **NebulaOps** resource group with star-themed tags and resource names so everything feels like part of a single cosmic system.

## Repository structure
```
.
├── automation/           # Runbook blueprints & operational guidance
├── docs/                 # Architecture notes and context
├── pipelines/            # CI/CD entry points
├── scripts/              # Local helpers
└── terraform/            # Infrastructure as code
```

See `docs/OPERATIONS.md` and `docs/STATE_BOOTSTRAP.md` for day-2 operations and state setup guidance.

## Next orbit ideas
- Add GitHub Actions or Azure DevOps pipelines for linting and policy checks.
- Add a drift-detection job to alert on orbital anomalies.
- Extend the Starforge module with AKS, Key Vault, and App Insights.

---

**Make it yours.** Rename the constellation, remix the modules, and chart your own DevOps galaxy.
