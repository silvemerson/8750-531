module "vpc" {
    source = "git@github.com:4emerson/gcp-network.git?ref=v0.1.0"
    name = "vpc-modulo-remoto"
    description = "VPC criada por um modulo remoto"
}


module "subnet" {
    source = "git@github.com:4emerson/gcp-subnetworks.git?ref=v0.1.0"
    name = "subnet-modulo-remoto"
    ip_cidr_range = "192.168.10.0/28"
    network ="vpc-modulo-remoto"
}

module "disco" {
    source = "git@github.com:4emerson/gcp-disk.git?ref=v0.1.0"
    name = "disco-modulo-remoto"
    type = "pd-ssd"
    size = 5
    zone = "us-central1-a"
    description = "Disco criada por um modulo remoto"
 
}