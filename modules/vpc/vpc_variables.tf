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
# variable virtual_network_address_space {
#   default     = ["10.0.0.0/16"]
#   description = "Enter virtual network address space"
# }
# variable subnet_address_prefixes {
#   default     = ["10.0.2.0/24"]
#   description = "Subnet adress prefixes"
# }




