variable "name" {
  description = "Name of the virtual machine"
  type        = string
}

variable "node_name" {
  description = "Proxmox node where the VM will run"
  type        = string
}

variable "vm_id" {
  description = "Proxmox VM ID"
  type        = number
}

variable "cores" {
  description = "Number of CPU cores"
  type        = number
  default     = 2
}

variable "memory" {
  description = "Memory in MB"
  type        = number
  default     = 2048
}

variable "disk_size" {
  description = "Disk size in GB"
  type        = number
  default     = 20
}

variable "datastore_id" {
  description = "Proxmox datastore for the VM disk"
  type        = string
  default     = "local-lvm"
}

variable "iso_file_id" {
  description = "Proxmox ISO file ID"
  type        = string
}

variable "network_bridge" {
  description = "Proxmox network bridge"
  type        = string
  default     = "vmbr0"
}


variable "ipv4_address" {
  description = "Static IPv4 address with CIDR prefix"
  type        = string
}

variable "ipv4_gateway" {
  description = "Default IPv4 gateway"
  type        = string
}

variable "username" {
  description = "Cloud-Init username"
  type        = string
  default     = "root"
}

variable "password" {
  description = "Cloud-Init password"
  type        = string
  sensitive   = true
}

variable "ssh_public_key" {
  description = "SSH public key"
  type        = string
}

variable "qemu_agent_enabled" {
  description = "Enable QEMU guest agent integration"
  type        = bool
  default     = false
}