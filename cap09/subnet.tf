resource "google_compute_subnetwork" "subnet" {
    name = var.subnet_name
    ip_cidr_range = var.subnet_range
    region = var.default_region
    network = google_compute_network.vpc_network.id

    depends_on = [google_compute_network.vpc_network]
}
