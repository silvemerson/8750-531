output "disk_name" {
    value = google_compute_disk.this.name
  
}

output "disk_size" {
  value = google_compute_disk.this.size

}