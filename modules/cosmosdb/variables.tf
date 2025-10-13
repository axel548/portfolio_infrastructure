variable "cosmosdb_account_name" {
  type        = string
  description = "Name of the account of CosmosDB"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "cosmo_database_name" {
  type        = string
  description = "Name of the database in CosmosDB"
}

variable "offer_type" {
  type        = string
  description = "Offer type for CosmosDB"
    default     = "Standard"
}

