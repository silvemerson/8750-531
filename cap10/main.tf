module "network" {
    source = "./gcp-network"

    name = var.vpc_name
    description = "Rede do capitulo 10"
  
}

module "subnetwork" {
    source = "./gcp-subnet"
    
    name = "subnet-modulo"
    ip_cidr_range = "192.168.10.0/24"
    network = var.vpc_name
    depends_on = [ module.network ]
  
}

module "ip_externo" {
    source = "./gcp-public-ip"
    name = "ip-externo-modulo"
  
}

module "disk" {
    source = "./gcp-disk"
    name = "disco-modulo"
    type = "pd-ssd"
    size = 20
    description = "teste"
    zone = var.zone
  
}

module "firewall" {
    source = "./gcp-firewall"
    name = var.fw_name
    network = var.vpc_name
    source_ranges = var.source_ranges
    depends_on = [ module.network, module.subnetwork ]
}