resource "proxmox_virtual_environment_vm" "this" {
  name        = var.name
  description = "Managed by Terraform"
  tags        = ["terraform", "homelab"]

  node_name = var.node_name
  vm_id     = var.vm_id

  started = true
  on_boot = true

  # Useful while learning/testing.
  # If the VM cannot shut down cleanly, Terraform will force-stop it.
  stop_on_destroy = true

  agent {
    enabled = var.qemu_agent_enabled
  }

  cpu {
    cores = var.cores
    type  = "host"
  }

  memory {
    dedicated = var.memory
  }

  disk {
    datastore_id = var.datastore_id
    interface    = "scsi0"
    size         = var.disk_size

    iothread = true
    discard  = "on"
  }

  cdrom {
    file_id   = var.iso_file_id
    interface = "ide2"
  }

  network_device {
    bridge = var.network_bridge
    model  = "virtio"
  }

  initialization {
    datastore_id = var.datastore_id

    ip_config {
      ipv4 {
        address = var.ipv4_address
        gateway = var.ipv4_gateway
      }
    }

    user_account {
      username = var.username
      password = var.password
      keys     = [var.ssh_public_key]
    }
  }

  operating_system {
    type = "l26"
  }

  serial_device {}
}