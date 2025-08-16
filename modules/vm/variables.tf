variable "proxmox_password" {
  description = "Пароль пользователя terraform@pve"
  type        = string
  sensitive   = true
}

variable "vm_name" { description = "Имя виртуальной машины" type = string }
variable "vmid" { description = "VM ID" type = number }
variable "proxmox_node" { description = "Имя ноды Proxmox" type = string }
variable "template_id" { description = "ID шаблона для клонирования" type = number }
variable "cores" { description = "Количество CPU ядер" type = number }
variable "sockets" { description = "Количество CPU сокетов" type = number }
variable "memory" { description = "Оперативная память (МБ)" type = number }
variable "disk_size" { description = "Размер системного диска (ГБ)" type = number }
variable "storage" { description = "Хранилище для дисков" type = string }
variable "bridge" { description = "Сетевой мост" type = string }
variable "ipv4_address" { description = "IP адрес" type = string }
variable "gateway" { description = "Шлюз" type = string }
variable "vm_user" { description = "Пользователь" type = string }
variable "vm_password" { description = "Пароль пользователя" type = string sensitive = true }
