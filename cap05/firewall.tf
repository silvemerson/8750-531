resource "google_compute_firewall" "tf-chapter5"{
    name = "tf-chapter5-fw"
    network = "default"


    allow {
      protocol = "tcp"
      ports = ["80"]
    }
    allow {
      protocol = "tcp"
      ports = ["8080"]
    }


    source_ranges = ["0.0.0.0/0"]

}
