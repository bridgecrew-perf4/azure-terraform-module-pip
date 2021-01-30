provider "azurerm" {
  features {}
}

resource "random_id" "rg_name" {
  byte_length = 8
}

resource "random_id" "pip_name" {
  byte_length = 8
}

resource "azurerm_resource_group" "example_rg" {
  name     = "example-${random_id.rg_name.hex}-rg"
  location = "northeurope"
}

module "pip" {
  source = "../"

  name                = "example-${random_id.pip_name.hex}-pip"
  resource_group_name = azurerm_resource_group.example_rg.name
  location            = "northeurope"
  allocation_method   = "static"
}

output "pip_name" {
  value = module.pip.name
}
