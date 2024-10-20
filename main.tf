resource "azurerm_kubernetes_cluster" "main" {
  name                = local.aks_cluster_name
  location            = local.region
  resource_group_name = azurerm_resource_group.main.name
  dns_prefix          = "${var.project_prefix}-${var.environment}"

  default_node_pool {
    name            = "default"
    node_count      = var.node_count
    vm_size         = var.node_vm_size
    vnet_subnet_id  = azurerm_subnet.main.id
    enable_auto_scaling = var.enable_autoscaling
    min_count       = var.min_node_count
    max_count       = var.max_node_count
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin = "azure"
  }

  service_principal {
    client_id     = var.client_id
    client_secret = var.client_secret
  }

  tags = var.tags
}
