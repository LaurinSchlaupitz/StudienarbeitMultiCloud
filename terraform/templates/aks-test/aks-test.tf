module "azureResourceGroup" {
  source = "../../modules/azureResourceGroup"

  rg_name  = var.rg_name
  location = var.location
  tags     = var.tags
}

module "aks" {
  source              = "../../modules/aks"

  aks_name            = var.aks_name
  resource_group_name = module.azureResourceGroup.resource_group_name
  location            = var.location
  dns_prefix          = var.dns_prefix
  node_count          = var.node_count
  identity_type       = var.identity_type
  tags                = var.tags
}
