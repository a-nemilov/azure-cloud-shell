variable location {
  type        = string
  default     = "westus"
  description = "please  enter location"
}

variable main_resource_group {
  type        = string
  description = "Please enter resource group name"
}
variable virtual_network_name {
  type        = string
  description = "Enter virtual network name"
}
variable subnet_name {
  type        = string
  description = "Plaese enter subnet name"
}