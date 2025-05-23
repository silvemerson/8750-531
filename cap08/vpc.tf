resource "google_compute_network" "vpc_network" {
    name = var.vpc_name
    auto_create_subnetworks = var.bool_auto_create_subnetworks
  
}