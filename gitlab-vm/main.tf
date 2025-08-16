module "gitlab" {
  source = "../modules/vm"

  vm_name      = var.vm_name
  vmid         = var.vmid
  proxmox_node = var.proxmox_node
  template_id  = var.template_id
  cores        = var.cores
  sockets      = var.sockets
  memory       = var.memory
  storage      = var.storage
  bridge       = var.bridge
  disk_size    = var.disk_size
  ipv4_address = var.ipv4_address
  gateway      = var.gateway
  vm_user      = var.vm_user
  vm_password  = var.vm_password
  proxmox_password = var.proxmox_password
}
