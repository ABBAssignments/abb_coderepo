terraform {
  backend "azurerm" {
    resource_group_name  = var.resource_group_name
    storage_account_name = "yourstorageaccountname"
    container_name       = "terraform-state"
    key                  = "aks/terraform.tfstate"
  }
}
