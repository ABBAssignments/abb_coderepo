# Output for the AKS cluster name
output "aks_cluster_name" {
  description = "The name of the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.name
}

# Output for the AKS cluster resource ID
output "aks_cluster_id" {
  description = "The resource ID of the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.id
}

# Output for the AKS cluster kube_config
output "kube_config" {
  description = "The kubeconfig for accessing the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.kube_admin_config[0].raw_config
}

# Output for the AAD group object ID
output "aks_admin_group_id" {
  description = "The object ID of the AAD group used for AKS admin access"
  value       = azuread_group.aks_admins.object_id
}

# Output for the AAD group name
output "aks_admin_group_name" {
  description = "The display name of the AAD group used for AKS admin access"
  value       = azuread_group.aks_admins.display_name
}

# Output for the Log Analytics Workspace ID
output "log_analytics_workspace_id" {
  description = "The ID of the Log Analytics Workspace for monitoring"
  value       = azurerm_log_analytics_workspace.log_analytics.id
}

# Output for the Log Analytics Workspace name
output "log_analytics_workspace_name" {
  description = "The name of the Log Analytics Workspace for monitoring"
  value       = azurerm_log_analytics_workspace.log_analytics.name
}

# Output for the resource group name
output "resource_group_name" {
  description = "The name of the resource group"
  value       = azurerm_resource_group.rg.name
}

# Output for the Azure Key Vault ID
output "key_vault_id" {
  description = "The ID of the Azure Key Vault created"
  value       = azurerm_key_vault.key_vault.id
}

# Output for the Azure Key Vault name
output "key_vault_name" {
  description = "The name of the Azure Key Vault created"
  value       = azurerm_key_vault.key_vault.name
}

# Output for the Azure region
output "azure_region" {
  description = "The Azure region where resources are deployed"
  value       = var.region
}
