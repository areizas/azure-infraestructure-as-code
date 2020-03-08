#Terraform v0.12.4

resource "azurerm_resource_group" "azure-vm-rg" {
  name     = "${var.resource_group_name}"
  location = "${var.location}"
}