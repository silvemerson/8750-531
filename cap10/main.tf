module "network" {
    source = "./gcp-network"

    name = "tf-chapter10"
    description = "Rede do capitulo 10"
  
}

module "subnetwork" {
    source = "./gcp-subnet"
    
    name = "subnet-modulo"
    ip_cidr_range = "192.168.10.0/24"
    network = "tf-chapter10"
  
}