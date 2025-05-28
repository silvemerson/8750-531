locals {
  vm_types = {
    mysql = "e2-small" # [0]
    nginx = "e2-medium" # [1]
    grafana = "e2-micro" # [2]
  }
}

resource "google_compute_instance" "vm_for_each" {
    for_each = local.vm_types
    name = each.key
    machine_type = each.value
    zone = var.zone
    allow_stopping_for_update = var.allow_stopping_for_update

    boot_disk {
      initialize_params {
        image = var.image
      }
    }
    network_interface {
        network = "default"
        access_config {
            
        }
    }
}