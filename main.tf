# 1️⃣ Grupo de recursos
module "rg" {
  source   = "./modules/resource_group"
  rg_name  = var.resource_group_name
  location = var.location
}

# 2️⃣ Budget Alert
module "budget" {
  source          = "./modules/budget_alert"
  subscription_id = var.subscription_id
  amount          = var.budget_amount
  contact_emails  = var.budget_contact_emails
  email_receiver  = var.email_receiver
  resource_group_name = module.rg.resource_group_name
  depends_on          = [module.rg] # Asegura que el RG se cree antes
}

# 3️⃣ Storage Account
module "storage" {
  source               = "./modules/storage_account"
  rg_name              = module.rg.resource_group_name
  location             = module.rg.resource_group_location
  tags                 = var.tags_dev
  storage_account_name = var.storage_account_name
  depends_on           = [module.rg] # Asegura que el RG se cree antes
}



# # --------------------------------------------------------
# # Blob Containers
# # --------------------------------------------------------
resource "azurerm_storage_container" "images" {
  name                  = "images"
  storage_account_id   = module.storage.storage_account_id
  container_access_type = "private" # acceso público para imágenes del portafolio
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_id   = module.storage.storage_account_id
  container_access_type = "private"
}

resource "azurerm_storage_container" "cvs" {
  name                  = "cvs"
  storage_account_id   = module.storage.storage_account_id
  container_access_type = "private"
}
