# terraform
# Terraform Proxmox Infrastructure

## 📂 Структура
- `modules/vm/` — общий модуль для создания виртуальных машин в Proxmox.
- `gitlab-vm/` — проект для деплоя GitLab VM.
- `test-vm/` — проект для тестовой VM.

## 🚀 Использование
1. Перейти в нужную папку (например `gitlab-vm`).
2. Создать файл `terraform.tfvars` на основе `terraform.tfvars.example`:
   ```hcl
   proxmox_password = "SuperSecret"
   vmid             = 115
   vm_name          = "gitlab"
