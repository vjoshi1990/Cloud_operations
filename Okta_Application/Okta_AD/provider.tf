terraform {
  required_providers {
    oktapam = {
      source = "okta/oktapam"
      version = "0.3.1"
    }
  }
}

provider "oktapam" {
  # Configuration options
  org_name  = var.org_name
  base_url  = var.base_url
  api_token = var.api_token
}