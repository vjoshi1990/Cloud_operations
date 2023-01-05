resource "okta_user" "createserviceaccount" {
  login = "ARKICAM.APITFEXTPD01@example.com"
  email = "ARKICAM.APITFEXTPD01@example.com"
  first_name = "ARKICAM"
  last_name = ".APITFEXTPD01"
  password = "Password@123"
  admin_roles = [ "SUPER_ADMIN" ]
}
