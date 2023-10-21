terraform{
  required_providers{
  azurerm={
      source="hashicorp/azurerm"
      # Azure Registry version module 
      version=">=3.59.0" 
  }
}
      # Required Terraform version
      required_version=">=1.4.0"  
}

provider "azurerm" {

    features{}
    skip_provider_registration=true
    client_id=var.client_id
    client_secret=var.client_secret
    subscription_id=var.subscription_id
    tenant_id=var.tenant_id
}
