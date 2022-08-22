variable "client_id" {
  type        = string
  description = "Equinix API Client ID."
}

variable "client_secret" {
  type        = string
  description = "Equinix API Client Secret."
}

variable "aws_account_id" {
  type        = string
  description = "Tester's AWS account ID. Required in Equinix Fabric as authorization key."
}

variable "fabric_notification_users" {
  type = list(string)
  description = <<EOF
  A list of email address for provisioing status notification. 
  i.e. ["user1@domain.com", "user2@domain.com>"]
  EOF
}

variable "fabric_connection_name" {
  type        = string
  description = <<EOF
  Name of the connection resource that will be created. It will be auto-generated if not specified. 
  i.e. Support-POD<X>-<username>
  EOF
}

/*
variable "network_edge_device_id" {
  type        = string
  description = "Unique identifier of the Network Edge virtual device from which the connection would originate."
  default     = ""
}

variable "network_edge_device_interface_id" {
  type        = number
  description = <<EOF
  Applicable with 'network_edge_device_id', identifier of network interface on a given device, used for a connection.
  If not specified then first available interface will be selected.
  EOF
  default     = 0
}

variable "network_edge_configure_bgp" {
  type        = bool
  description = <<EOF
  Applicable with 'network_edge_device_id' and 'aws_dx_create_vif'. Creation and management of Equinix Network Edge BGP
  peering configurations.
  EOF
  default     = false
}

variable "fabric_port_name" {
  type        = string
  description = <<EOF
  Name of the buyer's port from which the connection would originate. One of 'fabric_port_name',
  'network_edge_device_id' or 'fabric_service_token_id' is required.
  EOF
  default     = "548759-SV2-CX-PRI-03"
}

variable "fabric_service_token_id" {
  type        = string
  description = <<EOF
  Unique Equinix Fabric key shared with you by a provider that grants you authorization to use their interconnection
  asset from which the connection would originate.
  EOF
  default     = ""
}

variable "fabric_speed" {
  type        = number
  description = <<EOF
  Speed/Bandwidth in Mbps to be allocated to the connection. If not specified, it will be used the minimum bandwidth
  available for the AWS service profile.
  EOF
  default     = 50

  validation {
    condition = contains([0, 50, 100, 200, 300, 400, 500, 1000, 2000, 5000, 10000], var.fabric_speed)
    error_message = "Valid values are (50, 100, 200, 300, 400, 500, 1000, 2000, 5000, 10000)."
  }
}

variable "fabric_purchase_order_number" {
  type        = string
  description = "Connection's purchase order number to reflect on the invoice."
  default     = ""
}

*/
