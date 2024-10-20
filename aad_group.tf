resource "azuread_group" "aks_admins" {
  display_name     = "aks-admins"
  security_enabled = true
}
