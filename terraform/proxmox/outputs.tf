output "test_vm_id" {
  description = "Proxmox VM ID of the test VM"
  value       = module.test_vm.vm_id
}

output "test_vm_name" {
  description = "Name of the test VM"
  value       = module.test_vm.name
}

output "test_vm_mac_addresses" {
  description = "MAC addresses assigned to the test VM"
  value       = module.test_vm.mac_addresses
}