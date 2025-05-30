# module "vpc_projeto"{
#     source = "terraform-google-modules/network/google"
#     version = "11.0.0"

#     network_name = var.vpc_name
#     project_id = var.gcp_project
#     subnets = [
#         {
#             subnet_name = var.subnet_name
#             subnet_range = "10.10.10.0/24"

#         }
#     ]
# }

resource "google_compute_network" "vpc_projeto" {
    name = var.vpc_name
    auto_create_subnetworks = true
  
}