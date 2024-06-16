resource "azurerm_service_plan" "main" {
  name                = "${var.app_service_name}-plan"
  location            = var.location
  resource_group_name = var.resource_group_name
  os_type             = "Linux"
  sku_name            = "S1"
}

resource "azurerm_linux_web_app" "main" {
  name                = var.app_service_name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = azurerm_service_plan.main.id
  app_settings        = var.app_settings

  site_config {
    application_stack {
      docker_image_name = "${var.docker_image_name}:${var.docker_image_tag}"
    }
  }
}