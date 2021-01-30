variable "name" {
  description = "The name (should obey a consistent naming policy) which will be used for the name generation of this public IP."
  type        = string
}

variable "location" {
  description = "Azure Region of the public IP to be created"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group of the public IP to be created"
  type        = string
}

variable "allocation_method" {
  description = "value"
  type        = string
  default     = "Static"
}

variable "tags" {
  description = "Tags to be applied to the IP address to be created"
  type        = map(string)
  default = {
    ManagedBy = "Terraform"
  }
}

variable "custom_tags" {
  description = "Custom tags that will be merged with the default tags."
  type        = map(string)
  default     = {}
}

variable "diagnostics_map" {
  description = "(Required) Storage account and Event Hub for the IP address diagnostics"
  type        = map(string)
  default     = {}
}

variable "log_analytics_workspace_id" {
  description = "(Required) Log Analytics ID for the IP address diagnostics"
  type        = string
  default     = ""
}

variable "diagnostics_settings" {
  description = "(Required) Map with the diagnostics settings for public IP deployment"
  type        = map(string)
  default     = {}
}
# diagnostics settings object example for public ip  object
# diagnostics_settings = {
#     log = [
#                 #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
#                 ["DDoSProtectionNotifications", true, true, 30],
#                 ["DDoSMitigationFlowLogs", true, true, 30],
#                 ["DDoSMitigationReports", true, true, 30],
#         ]
#     metric = [
#                ["AllMetrics", true, true, 30],
#     ]
# }

variable "sku" {
  description = "SKU (Basic or Standard)"
  type        = string
  default     = "Standard"
}

variable "ip_version" {
  description = "IP Protocol version (IPv4 or IPv6)"
  type        = string
  default     = "Standard"
}

variable "dns_prefix" {
  description = "Prefix to be appended to the FQDN (ex.: <dns_prefix>.<region>.cloudapp.azure.com)"
  type        = string
  default     = ""
}

variable "timeout" {
  description = "TCP timeout for idle connections. The value can be set between 4 and 30 minutes."
  type        = string
  default     = "4"
}

variable "zones" {
  description = "Define zone redundancy! Zone redundant by default! Only available in Regions where Availability zones are supported!"
  type        = list(string)
  default     = []
}

variable "reverse_fqdn" {
  description = "Reverse DNS (PTR) for public IP."
  type        = string
  default     = ""
}

variable "public_ip_prefix_id" {
  description = "Public IP prefix id"
  type        = string
  default     = ""
}
