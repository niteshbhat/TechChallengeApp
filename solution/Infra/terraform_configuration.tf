terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.10.0"
    }    
  }  
    backend "azurerm" {
      
      client_id = "c743af61-043d-4fae-9842-5c513e9a9591"      
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