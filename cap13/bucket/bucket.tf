resource "google_storage_bucket" "github-actions" {
    name = "github-actions-aula10"
    force_destroy = true
    location = var.default_region
 
}
