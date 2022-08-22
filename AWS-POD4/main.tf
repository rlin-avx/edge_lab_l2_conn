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
  name = var.fabric_connection_name

  seller_profile_name       = "AWS Direct Connect"
  seller_metro_code         = "SV"
  seller_metro_name         = "Silicon Valley"
  seller_region             = "us-west-1"
  seller_authorization_key  = var.aws_account_id

  #network_edge_id           = var.network_edge_device_id
  #network_edge_interface_id = var.network_edge_device_interface_id
  port_name                 = "548759-SV2-CX-PRI-03"
  vlan_stag                 = 740
  #service_token_id          = var.fabric_service_token_id
  speed                     = 50
  speed_unit                = "MB"
  #purchase_order_number    = var.fabric_purchase_order_number
}

