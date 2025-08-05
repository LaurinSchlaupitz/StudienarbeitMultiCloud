output "resource_group_name" {
  value       = module.azureResourceGroup.resource_group_name
}

output "resource_group_id" {
  value       = module.azureResourceGroup.resource_group_id
}

output "aks_client_certificate" {
  value       = module.aks.client_certificate
  sensitive   = true
}

output "aks_kube_config" {
  value       = module.aks.kube_config
  sensitive   = true
}
