resource "azurerm_role_assignment" "aks_cluster_admin" {
  scope                = azurerm_kubernetes_cluster.aks.id
  role_definition_name = "Azure Kubernetes Service RBAC Admin"
  principal_id         = azuread_group.aks_admins.object_id
}

resource "azurerm_role_assignment" "aks_monitoring_reader" {
  scope                = azurerm_kubernetes_cluster.aks.id
  role_definition_name = "Monitoring Reader"
  principal_id         = azuread_group.aks_admins.object_id
}
