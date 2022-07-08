variable "PASSWORD" {
  description = "Database administrator password"
  type        = string
  sensitive   = true
}

variable "rg_name" {
  description = "variable contain the name of resource group"
  type    = string
  default = "az-servian-rg"
}

variable "tags" {
  description = "Tag to decided the env of infra"
  type = map
  default = {
    "env" = "dev"
  }
}

variable "location" {
  description = "Infra Application Location"
  type    = string
  default = "West US"
}


variable "servian-aci" {
  
  type = map
  default = {
    "name"             = "servian-techchallenge"
    "dns_label"        = "servian-techchallenge"
    "container1_name"  = "postgres"
    "container1_image" = "postgres:latest"
    "container2_name"  = "tech-challenge"
    "container2_image" = "evila/tech-challenge:latest"
    "DbHost"           = "localhost"
    "ListenHost"       = "0.0.0.0"
    "ListenPort"       = "80"
  }
}

