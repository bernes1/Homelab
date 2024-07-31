terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "3.0.1-rc3"
    }
  }
}

provider "proxmox" {
  # Configuration options
  pm_api_url      = var.pm_api_url
  pm_user         = var.pm_user
  pm_password     = var.pm_password
  pm_tls_insecure = true

}


resource "proxmox_vm_qemu" "talos-ctp" {
  description = "Talos Control Plane Node"
  name        = "talos-ctp01"
  target_node = "pve01"

  clone {
    name = "talos-template"
    full = true
  }
  cores   = 2
  memory  = 2048
  storage = "local-lvm"
}
