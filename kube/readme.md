# docs for kube cluster
this is a verry much wip


make a file called provider.tfvars . 
```
variable "pm_api_url" {
  description = "Proxmox API URL"
  type        = string
  default     = "https://your-proxmox-host:8006/api2/json"
}

variable "pm_user" {
  description = "Proxmox API User"
  type        = string
  default     = "example_user"
}


variable "pm_password" {
  description = "Proxmox API Password"
  type        = string
  default     = "password here"
}
```

run this command in the terraform folder.
```shell
terraform init
```