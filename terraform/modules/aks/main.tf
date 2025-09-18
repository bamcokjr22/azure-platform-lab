resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_name
  location            = var.location
  resource_group_name = var.rg_name
  dns_prefix          = "platform"

  default_node_pool {
    name            = "default"
    node_count      = 2
    vm_size         = "Standard_A2_v2"
    vnet_subnet_id  = var.subnet_id
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin = "azure"
    service_cidr   = "10.1.0.0/16"
    dns_service_ip = "10.1.0.10"
  }
}

output "name" {
  value = azurerm_kubernetes_cluster.aks.name
}
