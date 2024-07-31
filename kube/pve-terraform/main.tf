resource "proxmox_vm_qemu" "talos-cp" {
  count       = 3
  name        = "talos-cp0${count.index + 1}"
  vmid = 200 + count.index  
  target_node = "pve01"
  clone       = "talos-template"
  agent       = 1
  skip_ipv6   = true

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

resource "proxmox_vm_qemu" "talos-node" {
  count       = 3
  name        = "talos-node0${count.index + 1}"
  vmid = 300 + count.index    
  target_node = "pve01"
  clone       = "talos-template"
  agent       = 1
  skip_ipv6   = true

  depends_on = [proxmox_vm_qemu.talos-cp]

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