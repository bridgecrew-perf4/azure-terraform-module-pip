resource "azurerm_public_ip" "public_ip" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = var.allocation_method
  tags                = merge(var.tags, var.custom_tags)

  sku                     = var.sku
  ip_version              = var.ip_version
  domain_name_label       = var.dns_prefix
  idle_timeout_in_minutes = var.timeout
  zones                   = var.zones
  reverse_fqdn            = var.reverse_fqdn
  public_ip_prefix_id     = var.public_ip_prefix_id
}
