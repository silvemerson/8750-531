locals {
  vm_configs = {
    dev = {
        "dev-nginx" = "e2-small"
        "dev-mysql" = "e2-micro"
    }

    prod = {
        "prod-nginx" = "e2-medium"
        "prod-mysql" = "n2-standard-2"
    }
  }
}

resource "google_compute_instance" "vm_for_each_workspace" {
    for_each = lookup(local.vm_configs, terraform.workspace, {})
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