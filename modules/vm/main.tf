terraform {
  required_providers {
    proxmox = {
      source  = "local/bpg/proxmox"
      version = "0.81.0"
    }
  }
}

provider "proxmox" {
  endpoint = "https://192.168.5.11:8006/"
  username = "terraform@pve"
  password = var.proxmox_password
  insecure = true
}

resource "proxmox_virtual_environment_vm" "vm" {
  name      = "${var.vm_name}-vm"
  node_name = var.proxmox_node
  vm_id     = var.vmid
  on_boot   = true

  cpu {
    sockets = var.sockets
    cores   = var.cores
  }
  memory {
    dedicated = var.memory
  }

  disk {
    interface    = "scsi0"
    datastore_id = var.storage
    size         = var.disk_size
  }

  network_device {
    bridge = var.bridge
    model  = "virtio"
  }

  boot_order = ["scsi0"]

  agent {
    enabled = true
  }

  operating_system {
    type = "l26"
  }

  clone {
    vm_id        = var.template_id
    full         = true
    datastore_id = var.storage
    node_name    = var.proxmox_node
  }

  initialization {
    datastore_id = var.storage
    user_account {
      username = var.vm_user
      password = var.vm_password
    }
    ip_config {
      ipv4 {
        address = var.ipv4_address
        gateway = var.gateway
      }
    }
  }

  tags = ["terraform", var.vm_name]
}
