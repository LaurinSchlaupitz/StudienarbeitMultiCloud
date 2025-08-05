resource "azurerm_kubernetes_cluster" "az_prototype_aks" {
  name                = var.aks_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = "Standard_B2ps_v2"
  }

  identity {
    type = var.identity_type
  }

  tags = var.tags
}
