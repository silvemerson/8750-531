resource "google_compute_disk" "vm-disco" {
    name = var.disk_name
    type = var.type_disk
    zone = var.zone
    size = var.size
  
}