resource "google_compute_instance" "tf-chapter6" {
    name = "tf-chapter6"
    machine_type = "e2-medium"
    zone = "us-central1-a"
    allow_stopping_for_update = true


    tags = ["terraform", "linux"]

    boot_disk {
      initialize_params {
        image = "debian-cloud/debian-12"
      }
    }

    attached_disk{
      source = "db-disk"
    }

    network_interface {
      network = "default"
    
    }
}
