# 1️⃣ Grupo de recursos
module "rg" {
  source   = "./modules/resource_group"
  rg_name  = var.resource_group_name
  location = var.location
}

# 2️⃣ Storage Account
module "storage" {
  source               = "./modules/storage_account"
  rg_name              = module.rg.name
  location             = module.rg.location
  storage_account_name = var.storage_account_name
}

# 3️⃣ Budget Alert
module "budget" {
  source          = "./modules/budget_alert"
  subscription_id = var.subscription_id
  amount          = var.budget_amount
  contact_emails  = var.budget_contact_emails
}

# --------------------------------------------------------
# Blob Containers
# --------------------------------------------------------
resource "azurerm_storage_container" "images" {
  name                  = "images"
  storage_account_name  = module.storage.name
  container_access_type = "blob" # acceso público para imágenes del portafolio
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_name  = module.storage.name
  container_access_type = "private"
}

resource "azurerm_storage_container" "cv" {
  name                  = "cv"
  storage_account_name  = module.storage.name
  container_access_type = "blob"
}
