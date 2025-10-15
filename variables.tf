variable "location" {
  type    = string
  default = "eastus"
}

variable "subscription_id" {
  type        = string
  description = "ID de la suscripción de Azure"
}

variable "project_name" {
  type    = string
  default = "portfolio"
}

variable "resource_group_name" {
  type    = string
  default = "portfolio-dev"
}

variable "storage_account_name" {
  type    = string
  default = "portfolio-storage"
}

variable "budget_amount" {
  type        = number
  description = "Monto para la alerta de presupuesto"
  default     = 5
}

variable "budget_contact_emails" {
  type        = list(string)
  description = "Lista de correos para notificaciones de presupuesto"
  default     = ["axel.aatl@gmail.com"]
}
