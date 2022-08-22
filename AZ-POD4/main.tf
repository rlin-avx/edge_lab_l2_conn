provider "equinix" {
  client_id = var.client_id
  client_secret = var.client_secret
}

module "equinix-fabric-connection" {
  source = "equinix-labs/fabric-connection/equinix"
  version = "0.3.1"

  # required variables
  notification_users = var.fabric_notification_users

  # optional variables
  name                      = var.fabric_connection_name
  port_name                 = "548759-SV2-CX-PRI-03"
  vlan_stag                 = 840
  speed                     = 50
  speed_unit                = "MB"
  seller_profile_name       = "Azure ExpressRoute"
  seller_metro_code         = "SV"
  #AZ ER service-key
  seller_authorization_key  = var.fabric_service_token_id
  named_tag                 = "PRIVATE"
  redundancy_type           = "SINGLE"
}