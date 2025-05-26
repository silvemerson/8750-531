variable "name" {
    type = string
    description = "Deverá ser adicionado um nome para o seu Firewall"
  
}

variable "source_ranges" {
    type = list(string)
  
}

variable "allow_rule" {
  default = {
    protocol = "tcp"
    ports    = ["22", "80"]
  }
}

variable "network" {
    type = string
    description = "add rede"
  
}