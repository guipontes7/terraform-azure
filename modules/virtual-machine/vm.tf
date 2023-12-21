resource "azurerm_linux_virtual_machine" "main" {
  name                  = var.azurerm_virtual_machine_name
  location              = var.resource_group_location
  resource_group_name   = var.resource_group_name
  size                  = var.vm_shape
  admin_username        = "admin-gp"
  network_interface_ids = [azurerm_network_interface.main.id]
  admin_ssh_key {
    username   = "admin-gp"
    public_key = file("../key/id_rsa.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = var.os_disk_storage_account_type #"Standard_LRS"
    disk_size_gb         = var.disk_size_gb
  }

  source_image_reference {
    publisher = var.source_image_reference_publisher #"Canonical"
    offer     = var.source_image_reference_offer     #"0001-com-ubuntu-server-focal"
    sku       = var.source_image_reference_sku       #"20_04-lts-gen2"
    version   = var.source_image_reference_version   #"latest"
  }
  tags = {
    Environment = var.env
  }
}

