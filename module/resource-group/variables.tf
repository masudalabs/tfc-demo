variable "project_name" {
  type        = string
  description = "Name of the project for this resource group"
}

variable "tags" {
  type        = map(string)
  description = "Other tags than default ones"
  default     = {}
}

variable "location" {
  type        = string
  description = "Location for resource group"
}

variable "resource_group_name" {
  type = string
  description = "The resource group name"
}