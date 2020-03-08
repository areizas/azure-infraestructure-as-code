#Terraform v0.12.4

resource "azurerm_virtual_network" "azure_vm_virtualnetwork" {
  name                = "azure_vm_virtualnetwork"
  address_space       = ["${var.vnet_cidr}"]
  location            = "${var.location}"
  resource_group_name = "${var.resource_group_name}"
  depends_on = ["azurerm_resource_group.azure-vm-rg"]
}

resource "azurerm_subnet" "azure_vm_subnet" {
  name                 = "azure_vm_subnet"
  address_prefix       = "${var.subnet_cidr}"
  virtual_network_name = "${azurerm_virtual_network.azure_vm_virtualnetwork.name}"
  resource_group_name  = "${var.resource_group_name}"
}