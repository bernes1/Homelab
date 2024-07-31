# docs for kube cluster
this is a verry much wip

https://factory.talos.dev/?arch=amd64&cmdline-set=true&extensions=-&extensions=siderolabs%2Fqemu-guest-agent&platform=nocloud&target=cloud&version=1.7.5


Your image schematic ID is: ce4c980550dd2ab1b17bbf2b08801c7eb59418eafe8f279833297925d67c7515

```
customization:
    systemExtensions:
        officialExtensions:
            - siderolabs/qemu-guest-agent

```


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