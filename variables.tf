variable "location" {
  type    = string
  default = "eastus"
}

variable "suscrpiption_id" {
  type        = string
  description = "ID de la suscripción de Azure"
}

variable "project_name" {
  type    = string
  default = "portfolio"
}

variable "resource_group_name" {
  type    = string
  default = project_name + "-dev"
}

variable "storage_account_name" {
  type = string
  default = project_name + "-storage"
}
