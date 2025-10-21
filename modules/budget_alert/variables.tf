variable "subscription_id" {
  type = string
}

variable "resource_group_name" {
  type    = string
}

variable "amount" {
  type        = number
  description = "Budget amount in USD"
}

variable "contact_emails" {
  type = list(string)
  default = []
}

variable "email_receiver" {
  type    = string
}

variable "name_receiver" {
  type    = string
  default = "PrimaryEmail"
}

variable "short_name_email_alerts" {
  type    = string
  default = "alertactgrp"
}

variable "name_email_alerts" {
  type    = string
  default = "alert-act-group-emails"
}

variable "name_budget_storage" {
  type    = string
  default = "budget-alert"
}