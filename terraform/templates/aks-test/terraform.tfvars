subscription_id = "08e9eb1e-8bde-4be2-8e35-168491af1fac"
tenant_id       = "2bf53863-518e-45c4-8ac4-fdba01950ad2"

rg_name  = "test_rg"
location = "germanywestcentral"

aks_name      = "example-aks1"
dns_prefix    = "exampleaks1"
node_count    = 1
identity_type = "SystemAssigned"

tags = {
  Environment = "Production"
  Project     = "multi-cloud-prototype"
}