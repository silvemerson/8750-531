terraform {
  backend "gcs" {
    bucket = "github-actions-aula10"
    prefix = "terraform/state"
    
  }
}