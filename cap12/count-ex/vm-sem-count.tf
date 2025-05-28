resource "google_compute_instance" "vm_sem_count_01" {
    name = "vm-sem-count-01"
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

resource "google_compute_instance" "vm_sem_count_02" {
    name = "vm-sem-count-02"
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

resource "google_compute_instance" "vm_sem_count_03" {
    name = "vm-sem-count-03"
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


resource "google_compute_instance" "vm_sem_count_04" {
    name = "vm-sem-count-4"
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


