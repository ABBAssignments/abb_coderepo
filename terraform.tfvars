resource_group_name = "my-aks-project-rg"
environment         = "dev"
project_prefix      = "aks"
client_id           = "azure-client-id"
client_secret       = "azure-client-secret"

state_rg_name              = "tfstate-rg"
state_storage_account_name = "tfstatestorageacct"
state_container_name       = "tfstate-container"
region                     = "westeurope"
tags = {
  environment = "dev"
  project     = "aks-deployment"
}


