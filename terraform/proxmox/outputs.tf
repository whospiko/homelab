output "cp_01_vm_id" {
  description = "Proxmox VM ID of the Control Plan 01 VM"
  value       = module.cp-01.vm_id
}

output "cp_01_vm_name" {
  description = "Name of the Control Plan 01 VM"
  value       = module.cp-01.name
}

output "worker_01_vm_id" {
  description = "Proxmox VM ID of the Workder 01 VM"
  value       = module.worker-01.vm_id
}

output "worker_01_vm_name" {
  description = "Name of the Workder 01 VM"
  value = module.worker-01.name
}

output "worker_99_vm_id" {
  description = "Proxmox VM ID of the Worker 99 VM (Database)"
  value       = module.worker-99.vm_id
}

output "worker_99_vm_name" {
  description = "Name of the Worker 99 VM (Database)"
  value = module.worker-99.name
}