resource "google_compute_instance" "count_workspace" {
    count = terraform.workspace == "dev" ? 3 : 0
    name =  format("%s-%s", terraform.workspace, "vm-${count.index}")
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