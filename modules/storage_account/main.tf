resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = var.rg_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  # allow_blob_public_access = false
  min_tls_version          = "TLS1_2"
  # enable_https_traffic_only = true

  lifecycle {
    prevent_destroy = false
  }

  tags = var.tags
}
