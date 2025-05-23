variable "gcp_project" {
    description = "Nome do projet na GCP"
    type = string
    default = "gcp-4linux"
  
}

variable "default_region" {
    description = "Região padrão do provisionamento"
    type = string
    default = "us-central1"
  
}

# variable "zone" {
#     description = "Variável da zona de dispinibilidade"
#     type = string
#     default = "us-central1-a"
  
# }

# variable "vpc_name" {
#     description = "Nome da VPC"
#     type = string
#     default = "custom-vpc-aula04"
  
# }

# variable "bool_auto_create_subnetworks" {
#     description = "Criar subnetes dinamicamente"
#     type = bool
#     default = false
  
# }

# variable "subnet_name" {
#     description = "Nome da nossa subnet"
#     type = string
#     default = "subnet-01"


# }


# variable "subnet_range" {
#     description = "Range dos Ip's da subnet"
#     type = string
#     default = "10.0.1.0/24"
  
# }

# variable "disk_name" {
#     description = "variavel para nome do disco"
#     type = string
#     default = "vm-disco"
  
# }

# variable "type_disk" {
#     description = "tipo de disco"
#     type = string
#     default = "pd-ssd"
  
# }

# variable "size" {
#     description = "Tamanho do disco"
#     type = number
#     default = 12
  
# }

# variable "ip_publico" {
#     type = string
#     default = "ipv4-address"
  
# }

# variable "fw_name" {
#     type = string
#     default = "allow-ssh"
  
# }

# variable "protocol_tipo" {
#     type = string
#     default = "tcp"
# }

# variable "allow_rule" {
#   default = {
#     protocol = "tcp"
#     ports    = ["22", "80", "8080"]
#   }
# }

# variable "source_ranges" {
#     type = list(string)
#     default = [ "0.0.0.0/0" ]
  
# }

# variable "vm_name" {
#     type = string
#     default = "vm-instance-exemplo"
  
# }

# variable "machine_type" {
#     type = string
#     default = "e2-medium"
  
# }

# variable "allow_stopping_for_update" {
#     type = bool
#     default = true
  
# }


# # variable "allow_rule" {
# #     type = list(number)
# #     default = [ 22, 80 ]
# # }