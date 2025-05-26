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
    name = var.ip_publico
  
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


module "vm-instance" {
    source = "./gcp-instance"
    name = var.vm_name
    machine_type = var.machine_type
    zone = var.zone
    allow_stopping_for_update = var.allow_stopping_for_update
    image = var.image
    ssh-keys = "tux:${file("/home/emerson/4Linux/8740-524-ssh-keys/8740-524.pub")}"

    network = var.vpc_name
    subnetwork = "subnet-modulo"
    nat_ip = module.ip_externo.ip_externo

    depends_on = [ module.ip_externo ]
}