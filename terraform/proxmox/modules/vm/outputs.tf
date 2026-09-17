output "vm_id" {
  description = "Proxmox VM ID"
  value       = proxmox_virtual_environment_vm.this.vm_id
}

output "name" {
  description = "VM name"
  value       = proxmox_virtual_environment_vm.this.name
}

output "mac_addresses" {
  description = "VM MAC addresses"
  value       = proxmox_virtual_environment_vm.this.mac_addresses
}