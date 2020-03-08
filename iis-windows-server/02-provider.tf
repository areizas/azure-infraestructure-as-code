provider "azurerm" {
  # Mientras que usar el comando version es opcional se recomienda usarlo para fijar la version con la que se ha trabajado
  version = "=1.28.0"
  
  subscription_id = "${var.subscription_id}"
  client_id       = "${var.client_id}"
  client_secret   = "${var.client_secret}"
  tenant_id       = "${var.tenant_id}"
}