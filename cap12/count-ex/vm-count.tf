resource "google_compute_instance" "vm_count" {
    count = 4
    name = "vm-count-${count.index}"
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