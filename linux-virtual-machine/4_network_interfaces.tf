#Terraform v0.12.4

resource "azurerm_public_ip" "azure_vm_publicip" {
  name                         = "azure_vm_publicip"
  location                     = "${var.location}"
  resource_group_name          = "${var.resource_group_name}"
  domain_name_label            = "${var.domain_name}"
  public_ip_address_allocation = "static"
  depends_on = ["azurerm_resource_group.azure-vm-rg"]

}

resource "azurerm_network_interface" "azure_vm_interface" {
  name                      = "azure_vm_interface"
  location                  = "${var.location}"
  resource_group_name       = "${var.resource_group_name}"
  network_security_group_id = "${azurerm_network_security_group.azure_vm_network_security_group.id}"

  ip_configuration {
    name                          = "azure_vm_ip"
    subnet_id                     = "${azurerm_subnet.azure_vm_subnet.id}"
    private_ip_address_allocation = "dynamic"
    public_ip_address_id          = "${azurerm_public_ip.azure_vm_publicip.id}"
  }
}
