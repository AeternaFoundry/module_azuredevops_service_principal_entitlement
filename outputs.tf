output "service_principal_entitlements_id" {
  description = "Map of id values across all service_principal_entitlements, keyed the same as var.service_principal_entitlements except keys with no id are omitted"
  value       = { for k, v in azuredevops_service_principal_entitlement.service_principal_entitlements : k => v.id if v.id != null && length(v.id) > 0 }
}
output "service_principal_entitlements_account_license_type" {
  description = "Map of account_license_type values across all service_principal_entitlements, keyed the same as var.service_principal_entitlements except keys with no account_license_type are omitted"
  value       = { for k, v in azuredevops_service_principal_entitlement.service_principal_entitlements : k => v.account_license_type if v.account_license_type != null && length(v.account_license_type) > 0 }
}
output "service_principal_entitlements_descriptor" {
  description = "Map of descriptor values across all service_principal_entitlements, keyed the same as var.service_principal_entitlements except keys with no descriptor are omitted"
  value       = { for k, v in azuredevops_service_principal_entitlement.service_principal_entitlements : k => v.descriptor if v.descriptor != null && length(v.descriptor) > 0 }
}
output "service_principal_entitlements_display_name" {
  description = "Map of display_name values across all service_principal_entitlements, keyed the same as var.service_principal_entitlements except keys with no display_name are omitted"
  value       = { for k, v in azuredevops_service_principal_entitlement.service_principal_entitlements : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "service_principal_entitlements_licensing_source" {
  description = "Map of licensing_source values across all service_principal_entitlements, keyed the same as var.service_principal_entitlements except keys with no licensing_source are omitted"
  value       = { for k, v in azuredevops_service_principal_entitlement.service_principal_entitlements : k => v.licensing_source if v.licensing_source != null && length(v.licensing_source) > 0 }
}
output "service_principal_entitlements_origin" {
  description = "Map of origin values across all service_principal_entitlements, keyed the same as var.service_principal_entitlements except keys with no origin are omitted"
  value       = { for k, v in azuredevops_service_principal_entitlement.service_principal_entitlements : k => v.origin if v.origin != null && length(v.origin) > 0 }
}
output "service_principal_entitlements_origin_id" {
  description = "Map of origin_id values across all service_principal_entitlements, keyed the same as var.service_principal_entitlements except keys with no origin_id are omitted"
  value       = { for k, v in azuredevops_service_principal_entitlement.service_principal_entitlements : k => v.origin_id if v.origin_id != null && length(v.origin_id) > 0 }
}

