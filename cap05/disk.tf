resource "google_compute_disk" "tf-chapter5" {
    name = "tf-chapter5-disk"
    size = 50
    type = "pd-standard"
    zone = "us-central1-a"
  
}