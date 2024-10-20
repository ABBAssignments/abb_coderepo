locals {
  region              = var.region
  resource_group_name = "${var.project_prefix}-${var.environment}-rg"
  aks_cluster_name    = "${var.project_prefix}-${var.environment}-aks"
  vnet_name           = "${var.project_prefix}-${var.environment}-vnet"
  subnet_name         = "${var.project_prefix}-${var.environment}-subnet"
  nsg_name            = "${var.project_prefix}-${var.environment}-nsg"
  log_analytics_workspace_name = "${var.project_prefix}-${var.environment}-log-analytics"
  key_vault_name      = "${var.project_prefix}-${var.environment}-kv"
}
