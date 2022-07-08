terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.10.0"
    }    
  }  
    backend "azurerm" {
      
      client_id = "73c1622b-a69a-433c-b0aa-6667c993afa5"      
      subscription_id = "2bb73b3d-e047-4efa-834c-6d2d3d6a2814"
      tenant_id = "7901444b-9f44-43c2-925b-0e68155edbe7"
    }  
}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
}
