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

variable "zone" {
    description = "Variável da zona de dispinibilidade"
    type = string
    default = "us-central1-a"
  
}

variable "vpc_name" {
    description = "Nome da VPC"
    type = string
    default = "vpc-projeto"
  
}


variable "subnet_name" {
    description = "Nome da nossa subnet"
    type = string
    default = "subnet-projeto"


}



variable "machine_type" {
    type = string
    default = "e2-medium"
  
}

variable "allow_stopping_for_update" {
    type = bool
    default = true
  
}



variable "image" {
    type = string
    default = "debian-cloud/debian-12"
  
}

variable "back_provision_script" {
    default = "./script/infra-final.sh"
    type = string
}

variable "group_regions" {
    type = list(string)
    default = [ "us-central1","asia-east1" ]
  
}

variable "us-zones" {
    type = list(string)
    default = [ "us-central1-a", "us-central1-b" ]
  
}

variable "lb_group_sizes" {
    type = list(number)
    default = [ 0, 2 ]
  
}

variable "instance-template-name" {
    type = string
    default = "appserver-template"
  
}

variable "us-instance-group-name" {
    type = string
    default = "appserver-igm-us"
  
}

variable "asia-instance-group-name" {
    type = string
    default = "appserver-igm-asia"
  
}