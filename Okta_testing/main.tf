#Creating a Group
resource "okta_group" "testgroup2" {
  name        = "MFAExampt2"
  description = "My Example Group"
  skip_users  = true 
}

  resource "okta_policy_password" "example" {
  name                   = "example"
  status                 = "ACTIVE"
  description            = "Example"
  password_history_count = 4
  question_recovery = "INACTIVE"
  groups_included = ["${okta_group.testgroup2.id}"]
}
