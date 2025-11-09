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
  default = "rg-portfolio-dev"
}

variable "storage_account_name" {
  type    = string
  default = "portfoliostoragedev" # El nombre debe ser único a nivel global 
  # TODO: Agregar una función para generar un nombre único
}

variable "budget_amount" {
  type        = number
  description = "Monto para la alerta de presupuesto"
  default     = 5
}

variable "budget_contact_emails" {
  type        = list(string)
  description = "Lista de correos para notificaciones de presupuesto"
}

variable "email_receiver" {
  type    = string
}


variable "tags_dev" {
  type = map(string)
}