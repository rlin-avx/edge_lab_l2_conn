variable "client_id" {
  type        = string
  description = "Equinix API Client ID."
}

variable "client_secret" {
  type        = string
  description = "Equinix API Client Secret."
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

variable "fabric_service_token_id" {
  type        = string
  description = <<EOF
  Unique Equinix Fabric key shared with you by a provider that grants you authorization to use their interconnection
  asset from which the connection would originate.
  EOF
}
