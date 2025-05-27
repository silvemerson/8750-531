module "tf-chapter11" {
    source = "terraform-google-modules/network/google"
    version = "11.0.0"

    network_name = "tf-chapter11"
    project_id = var.gcp_project
    subnets = [
        {
            subnet_name = "tf-chapter11"
            subnet_ip = "10.10.10.0/24"
            subnet_region = var.default_region
            
        }
    ]
  
}