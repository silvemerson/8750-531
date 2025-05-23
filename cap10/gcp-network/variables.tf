variable "name" {
    type = string
    description = "Deverá ser adicionado um nome para sua rede"
  
}

variable "description" {
    type = string
    description = "Coloque uma descrição da sua rede"
  
}

variable "auto_create_subnetworks" {
    type = bool
    description = "Será criado redes para todas as regiões? default: true"
    default = true
  
}