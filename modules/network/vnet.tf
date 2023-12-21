resource "azurerm_virtual_network" "vnet-01" {
  name                = var.virtual_network_name
  address_space       = var.address_space_address
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  tags = {
    Environment = var.env
  }
}
