variable "name_prefix" {
  description = "A prefix to associate to all the module resources"
  default     = "zs"
}

variable "name_suffix" {
  description = "A prefix to associate to all the module resources"
}

# variable "bastion_info" {
#   description = "A prefix to associate to all the module resources"
# }

variable "resource_tag" {
  description = "A tag to associate to all the module resources"
  default     = "cloud-connector"
}

variable "deployment_tag" {
  description = "A deployment tag to associate to all the module resources"
  default     = "development"
}

variable "resource_group" {
  description = "Main Resource Group Name"
}

variable "subnet_id" {
  description = "The id of subnet where the workload host has to be attached"
}

variable "server_admin_username" {
  default   = "ubuntu"
  type      = string
}

variable "ssh_key" {
  description = "SSH Key for instances"
}

variable "instance_size" {
  description = "The image size"
  default     = "Standard_B2s"
}

variable "win_vm_count" {
  description = "Number of servers to deploy"
}

variable "global_tags" {
  description = "Populate custom user provided tags"
}

variable "location" {
  description = "Azure Region"
}

# If no values specified, this defaults to Azure DNS 
variable "dns_servers" {
  description = "The DNS servers configured for workload VMs."
  type        = list(string)
  default     = []
}

variable "vm_username" {
  description = "Username"
}

variable "vm_password" {
  description = "Password"
}