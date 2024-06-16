variable "app_settings" {
  type    = map(string)
  default = {}
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "docker_image_name" {
  type = string
}

variable "docker_image_tag" {
  type = string
}

variable "app_service_name" {
  type = string
}