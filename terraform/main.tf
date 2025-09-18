module "resource_group" {
  source   = "./modules/resource_group"
  rg_name  = var.rg_name
  location = var.location
}
module "network" {
  source      = "./modules/network"
  rg_name     = module.resource_group.name
  location    = var.location
  vnet_name   = var.vnet_name
  subnet_name = var.subnet_name
}
module "storage" {
  source               = "./modules/storage"
  rg_name              = module.resource_group.name
  location             = var.location
  storage_account_name = var.storage_account_name
}
module "aks" {
  source    = "./modules/aks"
  rg_name   = module.resource_group.name
  location  = var.location
  aks_name  = var.aks_name
  subnet_id = module.network.subnet_id
}
module "acr" {
  source   = "./modules/acr"
  rg_name  = module.resource_group.name
  location = var.location
  acr_name = var.acr_name
}
