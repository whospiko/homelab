module "cp-01" {
  source = "./modules/vm"

  name           = "cp-01"
  node_name      = var.proxmox_node
  vm_id          = 100
  template_vm_id = 9000

  tags = [ "cp", "homelab" ]

  cores     = 2
  memory    = 8192
  disk_size = 40

  datastore_id   = "local-lvm"
  network_bridge = "vmbr0"

  ipv4_address = "192.168.100.100/24"
  ipv4_gateway = "192.168.100.1"

  dns_servers = [
    "8.8.8.8",
    "1.1.1.1"
  ]
  
  username       = "rocky"
  ssh_public_key = var.ssh_public_key
}

module "worker-01" {
  source = "./modules/vm"

  name           = "worker-01"
  node_name      = var.proxmox_node
  vm_id          = 200
  template_vm_id = 9000

  tags = [ "worker", "app","homelab" ]

  cores     = 2
  memory    = 8192
  disk_size = 30

  datastore_id   = "local-lvm"
  network_bridge = "vmbr0"

  ipv4_address = "192.168.100.200/24"
  ipv4_gateway = "192.168.100.1"

  dns_servers = [
    "8.8.8.8",
    "1.1.1.1"
  ]
  
  username       = "rocky"
  ssh_public_key = var.ssh_public_key
}

module "worker-99" {
  source = "./modules/vm"

  name           = "worker-99"
  node_name      = var.proxmox_node
  vm_id          = 999
  template_vm_id = 9000

  tags = [ "worker", "database","homelab" ]

  cores     = 2
  memory    = 4096
  disk_size = 30

  datastore_id   = "local-lvm"
  network_bridge = "vmbr0"

  ipv4_address = "192.168.100.99/24"
  ipv4_gateway = "192.168.100.1"

  dns_servers = [
    "8.8.8.8",
    "1.1.1.1"
  ]
  
  username       = "rocky"
  ssh_public_key = var.ssh_public_key
}