resource "oktapam_ad_connection" "Window_AD" {
    name = "Window_AD"
    gateway_id = "xxxxxxxxxx"
    domain = "www.xyz.com"
    service_account_username = "username" 
    service_account_password = "xxxxxxxxxxxx"
}

resource "oktapam_ad_task_settings" "Setting_WINDOW_AD" {
    connection_id = "4464462dsdsdasdsisiwwd"
    is_active = "true"
      
}