#Terraform v0.12.4

resource "azurerm_network_security_group" "azure_vm_network_security_group" {
  name                = "azure_vm_security_group"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group_name}"
  depends_on = ["azurerm_resource_group.azure-vm-rg"]

  security_rule {
    name                       = "AllowSSH"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    destination_port_range     = "22"
    source_port_range          = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "Port_80"
    priority                   = 110
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    destination_port_range     = "80"
    source_port_range          = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}