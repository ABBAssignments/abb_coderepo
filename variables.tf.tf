variable "region" {
  description = "The region where resources will be deployed"
  type        = string
  default     = "West Europe"
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "environment" {
  description = "The environment to deploy (e.g., dev, staging, prod)"
  type        = string
}

variable "project_prefix" {
  description = "Prefix for resource naming"
  type        = string
}

variable "aks_cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
}

variable "node_count" {
  description = "The number of nodes in the AKS cluster"
  type        = number
  default     = 3
}

variable "node_vm_size" {
  description = "VM size for the AKS nodes"
  type        = string
  default     = "Standard_DS2_v2"
}

variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
}

variable "vnet_address_space" {
  description = "The address space for the virtual network"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
}

variable "subnet_address_prefix" {
  description = "The address prefix for the subnet"
  type       

variable "state_rg_name" {
  description = "The name of the Resource Group for Terraform state storage"
  type        = string
}

variable "state_storage_account_name" {
  description = "The name of the Storage Account for storing the Terraform state"
  type        = string
}

variable "state_container_name" {
  description = "The name of the Storage Container for storing the Terraform state"
  type        = string
}

variable "region" {
  description = "The region where resources will be deployed"
  type        = string
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
}

variable "admin_user_object_id" {
  description = "The Object ID of the admin user to be added to the AKS admin group"
  type        = string
}

variable "cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
}

variable "region" {
  description = "The region where the resources will be deployed"
  type        = string
}

variable "node_count" {
  description = "The number of nodes in the default node pool"
  type        = number
  default     = 3
}

variable "node_vm_size" {
  description = "The VM size for the default node pool"
  type        = string
  default     = "Standard_DS2_v2"
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
}

