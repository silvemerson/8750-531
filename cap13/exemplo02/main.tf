module "vpc" {
    source = "git::https://github.com/4emerson/modulos-gcp-8750-531.git//gcp-network?ref=v0.1.0"
    name = "vpc-modulo"
    description = "Vpc via modulo remoto"
  
}

module "subnet" {
    source = "git::https://github.com/4emerson/modulos-gcp-8750-531.git//gcp-subnetworks?ref=v0.1.0"
    name = "subnet-modulo"
    ip_cidr_range = "192.168.0.0/28"
    network = "vpc-modulo"
  
}

module "disk" {
    source = "git::https://github.com/4emerson/gcp-disk.git?ref=v0.1.0"
    name = "disco-modulo"
    type = "pd-ssd"
    size = 20
    description = "teste"
    zone = var.zone
  
}