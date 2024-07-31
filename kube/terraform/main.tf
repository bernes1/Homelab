resource "proxmox_vm_qemu" "talos-ctp" {
  name        = "talos-ctp01"
  target_node = "pve01"
  clone       = "talos-template"

  disks {
    scsi {
      scsi0 {
        disk {
          storage    = "local-lvm"
          size       = "32G"
          emulatessd = true
        }
      }
    }
    ide {
      ide2 {
        cdrom {
          iso = "local:iso/nocloud-amd64.iso"
        }
      }
    }
  }
  cores  = 2
  memory = 4096
}


