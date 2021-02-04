provider "azurerm" {
  features {}
}

resource "random_id" "example_id" {
  byte_length = 8
}

resource "azurerm_resource_group" "example_rg" {
  name     = "example-${random_id.example_id.hex}-rg"
  location = "northeurope"
}

module "pip" {
  source = "../"

  name                = "example-${random_id.example_id.hex}-pip"
  resource_group_name = azurerm_resource_group.example_rg.name
  location            = "northeurope"
  allocation_method   = "static"
}

output "pip_name" {
  value = module.pip.name
}
