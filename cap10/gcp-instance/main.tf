resource "google_compute_instance" "this" {
    name = var.name
    machine_type = var.machine_type
    zone = var.zone
    allow_stopping_for_update = var.allow_stopping_for_update

    boot_disk {
      initialize_params {
        image = var.image
      }
    }
    network_interface {
      network = var.network
      subnetwork = var.subnetwork

      access_config {
        nat_ip = var.nat_ip
      }
    }
    metadata = {
      ssh-keys = var.ssh-keys
    }
}