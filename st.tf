provider "azurerm" {
  features {}
  subscription_id = "5f4f172c-ef7b-4e38-a634-fd55376ae67d"
  client_id       = "cf7ffcbf-2528-4295-9f11-03d219c41a03"
  client_secret   = "ZYCVahjULV78yG1ZaOtZmz6QoioMRzsl-t"
  tenant_id       = "68a0b371-89ec-4bdd-a53c-bf7044bb68a2"
}
resource "azurerm_resource_group" "example" {
  name     = "forsto"
  location = "West Europe"
}

resource "azurerm_storage_account" "example" {
  name                    = var.storageaccountname
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

}