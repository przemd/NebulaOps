# NebulaOps Architecture Map

## Guiding principles
- **Constellation clarity:** Everything tagged with mission, system, and orbit.
- **Lightweight core:** Small, reusable Terraform modules.
- **Automation first:** Operations should be code-driven and repeatable.

## Components
### Starforge landing zone
A foundational Azure footprint that includes:
- Resource Group
- Storage Account (state + artifacts)
- Log Analytics Workspace
- Automation Account

### State constellation
Terraform state is designed to live in Azure Storage for shared, reliable orchestration. The `backend.tf` template is a starting point for configuring this.

### Automation nexus
A runbook scaffold provides a blueprint for:
- Daily state drift checks
- Nightly cost reports
- Patch orchestration

### Pipeline orbit
A pipeline starter that validates Terraform formatting and can be extended for plan/apply workflows.

## Tagging standard
- `mission`: NebulaOps
- `system`: Starforge
- `orbit`: <environment>
- `stardate`: <yyyy-mm>

## Operational flow
1. Plan the orbit with Terraform.
2. Deploy the Starforge landing zone.
3. Connect automation runbooks.
4. Expand into additional constellations (AKS, Key Vault, Observability).
