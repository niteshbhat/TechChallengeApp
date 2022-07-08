resource "azurerm_resource_group" "az-rg" {
  name     = var.rg_name
  location = var.location
}

resource "azurerm_container_group" "servian-az-aci" {
  name                = var.servian-aci["name"]
  location            = azurerm_resource_group.az-rg.location
  resource_group_name = azurerm_resource_group.az-rg.name
  ip_address_type     = "Public"
  dns_name_label      = var.servian-aci["dns_label"]
  os_type             = "Linux"
 
  container {
    name   = var.servian-aci["container1_name"]
    image  = var.servian-aci["container1_image"]
    cpu    = "1.0"
    memory = "1.5"
    secure_environment_variables = {
      "VTT_DBHOST"        = var.servian-aci["DbHost"]
      "POSTGRES_PASSWORD" = var.PASSWORD
      "VTT_LISTENHOST"    = var.servian-aci["ListenHost"]
    }

  }

  container {
    name     = var.servian-aci["container2_name"]
    image    = var.servian-aci["container2_image"]
    cpu      = "1.0"
    memory   = "1.5"
    commands = ["/bin/sh", "-c", "sleep 10 ;  ./TechChallengeApp updatedb; ./TechChallengeApp serve"]
    secure_environment_variables = {
      "VTT_DBHOST"     = var.servian-aci["DbHost"]
      "VTT_DBPASSWORD" = var.PASSWORD
      "VTT_LISTENPORT" = var.servian-aci["ListenPort"]
      "VTT_LISTENHOST" = var.servian-aci["ListenHost"]
    }
    ports {
      port = 80
    }
  
  }
}
