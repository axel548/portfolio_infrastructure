# --------------------------------------------------------
# Outputs útiles
# --------------------------------------------------------
output "storage_account_name" {
  value = azurerm_storage_account.storage.name
}

output "images_container_url" {
  value = "${azurerm_storage_account.storage.primary_blob_endpoint}${azurerm_storage_container.images.name}"
}

output "tfstate_container_name" {
  value = azurerm_storage_container.tfstate.name
}
