module "test_vm" {
  source = "./modules/vm"

  name           = "terraform-test-01"
  node_name      = var.proxmox_node
  vm_id          = 100
  template_vm_id = 9000

  cores     = 2
  memory    = 4096
  disk_size = 20

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