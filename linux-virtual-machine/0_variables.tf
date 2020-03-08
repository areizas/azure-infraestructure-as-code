#Subscritption devops01
#Terraform v0.12.4

variable "subscription_id" {
  description = "Enter Subscription ID for provisioning resources in Azure"
  default     = "2f388809-db7c-XXXX-XXXX-XXXXXXXXXXXX"
}

variable "client_id" {
  description = "Enter Client ID for Application in Azure AD"
  default     = "f3e9d320-3e9d-XXXX-XXXX-XXXXXXXXXXXX"
}

variable "client_secret" {
  description = "Enter Client secret for Application in Azure AD"
  default     = "b4d7dbe0-78b2-XXXX-XXXX-XXXXXXXXXXXX"
}

variable "tenant_id" {
  description = "Enter Tenand ID / Directory ID  of your Azure AD. Login Azure id script install cli"
  default     = "668f04c9-91d0-XXXX-XXXX-XXXXXXXXXXXX"
}

variable "admin_ssh_publickey" {
  type        = "string"
  description = "Configure all the linux virtual machines in the cluster with the SSH RSA public key string. The key should include three parts, for example 'ssh-rsa AAAAB...snip...UcyupgH azureuser@linuxvm"
  default     = "ssh-rsa AAAAB...snip...UcyupgH azureuser@linuxvm"
}

variable "vm_username" {
  description = "Enter admin username to ssh into Linux VM"
  default     = "adminuser"
}

variable "vm_name" {
  description = "Enter admin username to ssh into Linux VM"
  default     = "azureVirtualMachine"
}


variable "location" {
  description = "The default Azure region for the resource provisioning"
  default     = "East US"
}

variable "tag" {
  default = "azure-vm"
  description = "Tag to group resources"
}

variable "resource_group_name" {
  description = "The default Azure region for the resource provisioning"
  default     = "azure-vm-rg"
}

variable "vnet_cidr" {
  description = "CIDR block for Virtual Network"
  default     = "192.168.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR block por subnet within a virtual network"
  default     = "192.168.1.0/24"
}

variable "prefix" {
  description = "The Prefix used for all resources in this example"
  default = "azure"
}

variable "domain_name" {
  description = "The domain name which will be set to the virtual machine"
  default = "azure-vm"
}