resource "google_compute_instance" "tf-chapter5" {
    name = "tf-chapter5"
    machine_type = "n2-standard-2"
    zone = "us-central1-a"


    boot_disk {
      initialize_params {
        image = "debian-cloud/debian-12"
      }
    }
    network_interface {
      network = "default"
    }

}
