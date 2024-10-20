# network.tf
resource "azurerm_virtual_network" "main" {
  name                = local.vnet_name
  location            = local.region
  resource_group_name = azurerm_resource_group.main.name
  address_space       = [var.vnet_address_space]

  tags = var.tags
}

resource "azurerm_subnet" "main" {
  name                 = local.subnet_name
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = [var.subnet_address_prefix]

  delegation {
    name = "aks_delegation"

    service_delegation {
      name = "Microsoft.ContainerService/managedClusters"
      actions = [
        "Microsoft.Network/virtualNetworks/subnets/action"
      ]
    }
  }
}

resource "azurerm_network_security_group" "main" {
  name                = local.nsg_name
  location            = local.region
  resource_group_name = azurerm_resource_group.main.name

  tags = var.tags
}

