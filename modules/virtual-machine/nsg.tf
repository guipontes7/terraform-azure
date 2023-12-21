resource "azurerm_network_security_group" "main" {
  name                = var.azurerm_network_security_group_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
}


resource "azurerm_network_security_rule" "main" {
  count                       = length(var.inbound_port_ranges)
  name                        = "nsg-rule-${count.index}"
  direction                   = "Inbound"
  access                      = "Allow"
  priority                    = 100 * (count.index + 1)
  source_address_prefixes     = var.ips_range
  source_port_range           = "*"
  destination_address_prefix  = "*"
  destination_port_range      = var.inbound_port_ranges[count.index]
  protocol                    = "Tcp"
  resource_group_name         = var.resource_group_name
  network_security_group_name = element(azurerm_network_security_group.main.*.name, count.index + 1)
}
