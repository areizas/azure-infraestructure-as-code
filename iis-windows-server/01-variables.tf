variable "subscription_id" {
  description = "Enter Subscription ID for provisioning resources in Azure"
}

variable "client_secret" {
  description = "Enter Client secret for Application in Azure AD"
}

variable "client_id" {
  description = "Enter Client ID for Application in Azure AD"
}

variable "tenant_id" {
  description = "Enter Tenand ID / Directory ID  of your Azure AD. Login Azure id script install cli"
}

variable "location" {
  description = "The default Azure region for the resource provisioning"
}

variable "prefix" {
  description = "Tag to group resources"
}

variable "resource_group_name" {
  description = "The default Azure region for the resource provisioning"
}

variable "vnet_cidr" {
  description = "CIDR block for Virtual Network"
  default     = "192.168.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR block por subnet within a virtual network"
  default     = "192.168.1.0/24"
}