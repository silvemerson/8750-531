resource "google_compute_subnetwork" "subnet" {
    name = "subnet-01"
    ip_cidr_range = "10.0.1.0/24"
    region = "us-central1"
    network = google_compute_network.vpc_network.id

    depends_on = [google_compute_network.vpc_network]
}
