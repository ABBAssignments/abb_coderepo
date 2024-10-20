# Create an Azure Active Directory group for AKS administrators
resource "azuread_group" "aks_admins" {
  display_name = "aks-admins"
  security_enabled = true
  members = [
    var.admin_user_object_id
  ]
}

# Define a Kubernetes role assignment for the AAD group
resource "azurerm_role_assignment" "aks_cluster_admin" {
  scope                = azurerm_kubernetes_cluster.aks.id
  role_definition_name = "Azure Kubernetes Service RBAC Admin"
  principal_id         = azuread_group.aks_admins.object_id
}

# Define another role assignment for monitoring capabilities
resource "azurerm_role_assignment" "aks_monitoring_reader" {
  scope                = azurerm_kubernetes_cluster.aks.id
  role_definition_name = "Monitoring Reader"
  principal_id         = azuread_group.aks_admins.object_id
}

# Example AKS cluster configuration to enable RBAC and integrate with AAD
resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  location            = var.region
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "${var.cluster_name}-dns"

  default_node_pool {
    name       = "agentpool"
    node_count = var.node_count
    vm_size    = var.node_vm_size
  }

  identity {
    type = "SystemAssigned"
  }

  # Enable Role-Based Access Control
  role_based_access_control {
    enabled = true
    azure_active_directory {
      managed             = true
      admin_group_object_ids = [azuread_group.aks_admins.object_id]
    }
  }

  tags = var.tags
}
