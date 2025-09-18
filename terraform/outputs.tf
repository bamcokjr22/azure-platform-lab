output "resource_group" { value = module.resource_group.name }
output "vnet_id" { value = module.network.vnet_id }
output "subnet_id" { value = module.network.subnet_id }
output "storage_account_name" { value = module.storage.name }
output "aks_cluster_name" { value = module.aks.name }
output "acr_login_server" { value = module.acr.login_server }
