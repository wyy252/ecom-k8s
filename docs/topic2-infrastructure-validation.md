# Topic 2 - Infrastructure Testing and Validation

## Problem Statement

Infrastructure definitions can become inconsistent if they are only reviewed manually. In this project, Kubernetes manifests need automatic validation to make sure deployments follow the expected deployment strategy, resource settings, and service exposure rules.

## Architecture and Approach

I implemented infrastructure validation with two layers:

- Kubeconform for schema validation
- Conftest with OPA policy rules for deployment and service requirements

## Acceptance Criteria

- Kubernetes manifests are validated automatically in CI
- Dev runs validation in report-oriented mode
- Staging and prod use blocking validation
- Validation outputs are archived in Jenkins

## Integration Points

- Kubernetes manifests repository
- Jenkins pipeline
- dev / staging / prod branch workflow

## Environment Behavior

- Dev: validation output is generated for feedback
- Staging: validation must pass
- Prod: validation must pass