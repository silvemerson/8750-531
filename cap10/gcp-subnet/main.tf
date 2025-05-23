resource "google_compute_subnetwork" "this" {
    name = var.name
    ip_cidr_range = var.ip_cidr_range
    network = var.network
  
}