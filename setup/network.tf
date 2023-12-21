module "network" {
  source                  = "../modules/network"
  virtual_network_name    = "vnet-${var.env}"
  virtual_network_id      = module.network.virtual_network_id
  subnet_id               = module.network.subnet_id
  resource_group_location = module.rg.location
  resource_group_name     = module.rg.name
  env                     = var.env

  address_space_address = ["10.0.0.0/16"]

  subnet_cidr_list = [
    "10.0.1.0/24"
  ]
}
