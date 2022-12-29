terraform {
  required_providers {
    okta = {
      source = "okta/okta"
      version = "~> 3.39.0"
    }
  }
}
# Configure the Okta Provider - API token set in env var.
provider "okta" {
 org_name  = var.org_name
 base_url  = var.base_url
 api_token = var.api_token
}

resource "okta_app_oauth" "sample_dotnet" {
  label = "Sample DotNet"
  type = "web"
  consent_method = "REQUIRED"
  login_uri = "https://localhost:5001/authorization-code/callback"
  post_logout_redirect_uris = ["https://localhost:5001/signout-callback-oidc"]
  redirect_uris = ["https://localhost:5001/signin-oidc"]
  omit_secret = false
  grant_types = ["authorization_code"]
  response_types = ["code"]
}