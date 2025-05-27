module "modulo-lb-tf-chapter11" {
    source = "GoogleCloudPlatform/lb/google"
    version = "2.2.0"

    name = "lb-tf-chapter11"
    network = "default"
    service_port = 80
    target_tags = ["allow-lb-web"]
    region = var.default_region

}