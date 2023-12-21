resource "azurerm_subnet" "subnet" {
  count                = length(var.subnet_cidr_list)
  name                 = "subnet-${count.index + 1}"
  address_prefixes     = [element(var.subnet_cidr_list, count.index)]
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  depends_on           = [azurerm_virtual_network.vnet-01]
}
