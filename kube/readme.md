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
## setup

link to the terraform provider docs from [telmate](https://registry.terraform.io/providers/Telmate/proxmox/latest/docs). 


Make a file called this file with the following contents.
```
 // kube/terraform/provider.tfvars
 pm_api_url = "https://your-proxmox-host:8006/api2/json"
 pm_user = "example_user"
 pm_password = "password here"
```

run this command in the terraform folder.
```shell
terraform init
```