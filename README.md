# Azure Platform Lab 🚀
This repo is a hands-on learning lab for Platform Engineering, Kubernetes, and SRE skills on Azure.

## Features
- Terraform (modular) for Azure infra (RG, VNet, Subnet, Storage Account, AKS, ACR)
- Helm chart for sample app
- GitHub Actions for CI/CD
- ArgoCD for GitOps deployment

## Quick Start
1. `cd terraform && terraform init && terraform apply`
2. Push code → GitHub Actions builds & deploys to AKS
3. ArgoCD auto-syncs manifests → running app
# azure-platform-lab
