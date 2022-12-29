resource "okta_user_type" "test" {
  name   = "example"
  display_name = "example"
  description = "example"
}

resource "okta_group" "test" {
  name        = "test"
  description = "My test Group"
}
