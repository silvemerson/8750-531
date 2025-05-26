resource "google_compute_disk" "this" {
    name = var.name
    type = var.type
    size = var.size
    zone = var.zone
  
}