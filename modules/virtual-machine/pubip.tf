resource "azurerm_public_ip" "main" {
  name                = var.azurerm_public_ip_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"


  tags = {
    Environment = var.env
  }
}
