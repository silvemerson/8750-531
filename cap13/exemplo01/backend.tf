
terraform {
  backend "gcs" {
    bucket = "gcs-chapter13-aula09"
    prefix = "terraform/state"
    
  }
}