module "test_vm" {
  source = "./modules/vm"

  name      = "terraform-test-01"
  node_name = var.proxmox_node
  vm_id     = 100

  cores     = 2
  memory    = 2048
  disk_size = 20

  datastore_id   = "local-lvm"
  network_bridge = "vmbr0"

  iso_file_id = "local:iso/Rocky-10.2-x86_64-minimal.iso"

  ipv4_address = "192.168.100.100/24"
  ipv4_gateway = "192.168.100.1"

  username       = "root"
  password       = var.vm_password
  ssh_public_key = var.ssh_public_key
}