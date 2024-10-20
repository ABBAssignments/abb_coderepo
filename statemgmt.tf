terraform {
  backend "azurerm" {
    resource_group_name   = var.state_rg_name
    storage_account_name  = var.state_storage_account_name
    container_name        = var.state_container_name
    key                   = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "state" {
  name     = var.state_rg_name
  location = var.region

  tags = var.tags
}

resource "azurerm_storage_account" "state" {
  name                     = var.state_storage_account_name
  resource_group_name      = azurerm_resource_group.state.name
  location                 = azurerm_resource_group.state.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = var.tags
}

resource "azurerm_storage_container" "state" {
  name                  = var.state_container_name
  storage_account_name  = azurerm_storage_account.state.name
  container_access_type = "private"
}
