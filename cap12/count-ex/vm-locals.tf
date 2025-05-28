locals {
  vm_name = ["mysql", "nginx", "grafana", "jenkins"]
}

resource "google_compute_instance" "vm_count_locals" {
    count = length(local.vm_name)
    name = local.vm_name[count.index]
    machine_type = var.machine_type
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