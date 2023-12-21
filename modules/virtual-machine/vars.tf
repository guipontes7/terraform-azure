variable "env" {}
variable "resource_group_name" {}
variable "resource_group_location" {}
variable "azurerm_virtual_machine_name" {}
variable "azurerm_network_interface_name" {}
variable "subnet_id" {}
variable "disk_size_gb" {}
variable "vm_shape" {}
variable "azurerm_network_security_group_name" {}
variable "ips_range" {}
variable "azurerm_public_ip_name" {}

variable "inbound_port_ranges" {
  type    = list(string)
  default = []
}

variable "os_disk_storage_account_type" {
  default = "Standard_LRS"
}

variable "source_image_reference_publisher" {
  default = "Canonical"
}

variable "source_image_reference_offer" {
  default = "0001-com-ubuntu-server-focal"
}

variable "source_image_reference_sku" {
  default = "20_04-lts-gen2"
}

variable "source_image_reference_version" {
  default = "latest"
}
