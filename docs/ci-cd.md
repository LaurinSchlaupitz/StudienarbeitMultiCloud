<!-- docs/ci-cd.md -->
# CI/CD Pipelines (GitHub Actions)

## Goals

- **Cost-controlled** automated deployments  
- **Plan-and-approve** Terraform before any apply  
- **Sequential**, gated rollout: infra → app

## Workflows

### 1. `iac.yml`  
- Trigger: `push` to `main`  
- Steps:  
  1. `terraform fmt` & `validate`  
  2. `terraform plan` → upload as artifact  
  3. **Manual approval** via GitHub Environment  
  4. `terraform apply` on approval  

### 2. `app-deploy.yml`  
- Trigger: successful completion of `iac.yml`  
- Steps:  
  1. Build Docker image (Flask app)  
  2. Push to Azure Container Registry  
  3. `kubectl set image` in AKS  

## Cost-Efficiency Tips

- Scheduled nightly `destroy` for non-prod  
- Use AKS spot node pools  
- Constrain parallel runners in GitHub settings  
