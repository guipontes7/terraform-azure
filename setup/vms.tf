module "vm_dev" {
  source                              = "../modules/virtual-machine"
  resource_group_name                 = module.rg.name
  resource_group_location             = module.rg.location
  azurerm_virtual_machine_name        = "vm-01-${var.env}"
  azurerm_network_interface_name      = "vm-01-nic-${var.env}"
  subnet_id                           = module.network.subnet_id[0]
  env                                 = var.env
  disk_size_gb                        = "40"
  vm_shape                            = "Standard_B2s"
  azurerm_public_ip_name              = "vm-01-pubip-${var.env}"
  azurerm_network_security_group_name = "nsg-${var.env}"

  inbound_port_ranges = [
    "22"
  ]

  ips_range = [
    "179.178.245.128"
  ]
}
