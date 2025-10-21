# --------------------------------------------------------
# Outputs útiles
# --------------------------------------------------------

output "rg_name" {
  value = module.rg.resource_group_name
}

# output "storage_account_name" {
#   value = module.storage.name
# }

# output "images_container_url" {
#   value = "${module.storage.primary_blob_endpoint}${azurerm_storage_container.images.name}"
# }

# output "tfstate_container_name" {
#   value = azurerm_storage_container.tfstate.name
# }
