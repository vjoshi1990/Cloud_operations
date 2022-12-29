resource "okta_policy_password" "test" {
  name                   = "test"
  status                 = "ACTIVE"
  description            = "Example"
  password_history_count = 4
  #groups_included        = ["${okta_group.testing.id}"]
  depends_on = [
        okta_group.testing,
    ]
}