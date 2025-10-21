# --------------------------------------------------------
# Action Group (para recibir alertas)
# --------------------------------------------------------
resource "azurerm_monitor_action_group" "email_alerts" {
  name                = var.name_email_alerts
  resource_group_name = var.resource_group_name
  short_name          = var.short_name_email_alerts

  email_receiver {
    name                    = var.name_receiver
    email_address           = var.email_receiver
    use_common_alert_schema = true
  }
}

# --------------------------------------------------------
# Presupuesto mensual con alertas de costo
# --------------------------------------------------------
resource "azurerm_consumption_budget_subscription" "budget_storage" {
  name            = var.name_budget_storage
  amount          = var.amount
  time_grain      = "Monthly"
  subscription_id = "/subscriptions/${var.subscription_id}"

  time_period {
    start_date = "2025-10-01T00:00:00Z"
    end_date   = "2026-10-01T00:00:00Z"
  }

  # Opcional: limitar al resource group
  # filter {
  #   resource_groups = [azurerm_resource_group.rg.name]
  # }

  # Notificación al 80%
  notification {
    enabled        = true
    threshold      = 80.0
    operator       = "GreaterThan"
    contact_emails = var.contact_emails
    contact_groups = [azurerm_monitor_action_group.email_alerts.id]
    threshold_type = "Actual"
  }

  # Notificación al 100%
  notification {
    enabled        = true
    threshold      = 100.0
    operator       = "GreaterThan"
    contact_emails = var.contact_emails
    contact_groups = [azurerm_monitor_action_group.email_alerts.id]
    threshold_type = "Actual"
  }

  depends_on = [azurerm_monitor_action_group.email_alerts]
}

