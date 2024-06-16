provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

module "main_resource_group" {
  source              = "../../../module/resource-group"
  project_name        = "demonstration"
  location            = "East US 2"
  resource_group_name = "rg-app1"
}

module "app1" {
  source              = "../../../module/app-service"
  app_service_name    = "masudalabs-app1-test"
  docker_image_name   = "nginx"
  docker_image_tag    = "1.27"
  resource_group_name = module.main_resource_group.name
  location            = module.main_resource_group.location
}