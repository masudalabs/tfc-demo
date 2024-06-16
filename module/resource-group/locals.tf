locals {
  workspace_name      = lower(element(split("/", abspath(path.root)), length(split("/", abspath(path.root))) - 1))
  environment_name    = lower(element(split("/", abspath(path.root)), length(split("/", abspath(path.root))) - 2))
  # resource_group_name = "${var.project_name}-${local.environment_name}-${local.workspace_name}"
  resource_group_name = "${var.project_name}-${var.resource_group_name}"
  default_tags = {
    project = var.project_name
    location = var.location
    module = "tfc_demo"
  }
}