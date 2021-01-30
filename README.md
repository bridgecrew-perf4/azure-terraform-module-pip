# Change this README accordingly

[//]: # (Do NOT make manual changes below this line! Automatic generation of content!)
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.20 |
| azurerm | >= 2.41.0 |

## Providers

| Name | Version |
|------|---------|
| azurerm | >= 2.41.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| allocation\_method | value | `string` | `"Static"` | no |
| custom\_tags | Custom tags that will be merged with the default tags. | `map(string)` | `{}` | no |
| diagnostics\_map | (Required) Storage account and Event Hub for the IP address diagnostics | `map(string)` | `{}` | no |
| diagnostics\_settings | (Required) Map with the diagnostics settings for public IP deployment | `map(string)` | `{}` | no |
| dns\_prefix | Prefix to be appended to the FQDN (ex.: <dns\_prefix>.<region>.cloudapp.azure.com) | `string` | `""` | no |
| ip\_version | IP Protocol version (IPv4 or IPv6) | `string` | `"Standard"` | no |
| location | Azure Region of the public IP to be created | `string` | n/a | yes |
| log\_analytics\_workspace\_id | (Required) Log Analytics ID for the IP address diagnostics | `string` | `""` | no |
| name | The name (should obey a consistent naming policy) which will be used for the name generation of this public IP. | `string` | n/a | yes |
| public\_ip\_prefix\_id | Public IP prefix id | `string` | `""` | no |
| resource\_group\_name | Resource group of the public IP to be created | `string` | n/a | yes |
| reverse\_fqdn | Reverse DNS (PTR) for public IP. | `string` | `""` | no |
| sku | SKU (Basic or Standard) | `string` | `"Standard"` | no |
| tags | Tags to be applied to the IP address to be created | `map(string)` | <pre>{<br>  "ManagedBy": "Terraform"<br>}</pre> | no |
| timeout | TCP timeout for idle connections. The value can be set between 4 and 30 minutes. | `string` | `"4"` | no |
| zones | Define zone redundancy! Zone redundant by default! Only available in Regions where Availability zones are supported! | `list(string)` | <pre>[<br>  "1",<br>  "2",<br>  "3"<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| fqdn | Output the fully qualified domain name |
| id | Output the object ID |
| ip\_address | Output the ip address |
| name | Output the object name |
| object | Output the full object |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
