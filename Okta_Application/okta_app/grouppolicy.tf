resource "okta_group" "testing" {
  name        = "testing"
  description = "My Group"
}

resource "okta_group_role" "test_role" {
  group_id  = "${okta_group.testing.id}"
  role_type = "APP_ADMIN"
  depends_on = [
        okta_group.testing,
    ]
}