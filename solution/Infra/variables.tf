variable "rg_name" {
  type    = string
  default = "az-servian-rg"
}

variable "tags" {
  type = map
  default = {
    "env" = "dev"
  }
}

variable "location" {
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

