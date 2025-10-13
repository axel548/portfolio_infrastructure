variable "subscription_id" {
  type = string
}

variable "amount" {
  type        = number
  description = "Budget amount in USD"
}

variable "contact_emails" {
  type = list(string)
}
