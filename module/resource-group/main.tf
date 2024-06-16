resource "azurerm_resource_group" "main" {
  name     = local.resource_group_name
  location = var.location
  tags     = merge(local.default_tags, var.tags)
}