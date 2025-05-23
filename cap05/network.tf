resource "google_compute_network" "tf-chapter5" {
    name = "tf-chapter5-network"

    auto_create_subnetworks = false
  
}

resource "google_compute_subnetwork" "tf-chapter5" {
    name = "tf-chapter5-subnet"
    ip_cidr_range = "10.10.10.0/24"
    region = "us-central1"
    network = "tf-chapter5-network"
  
}