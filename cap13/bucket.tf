resource "google_storage_bucket" "tf-chapter13" {
    name = "gcs-chapter13-aula09"
    force_destroy = true
    location = var.default_region
 
  
}
