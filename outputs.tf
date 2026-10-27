output "service_principal_entitlements_id" {
  description = "Map of id values across all service_principal_entitlements, keyed the same as var.service_principal_entitlements"
  value       = { for k, v in azuredevops_service_principal_entitlement.service_principal_entitlements : k => v.id }
}
output "service_principal_entitlements_account_license_type" {
  description = "Map of account_license_type values across all service_principal_entitlements, keyed the same as var.service_principal_entitlements"
  value       = { for k, v in azuredevops_service_principal_entitlement.service_principal_entitlements : k => v.account_license_type }
}
output "service_principal_entitlements_descriptor" {
  description = "Map of descriptor values across all service_principal_entitlements, keyed the same as var.service_principal_entitlements"
  value       = { for k, v in azuredevops_service_principal_entitlement.service_principal_entitlements : k => v.descriptor }
}
output "service_principal_entitlements_display_name" {
  description = "Map of display_name values across all service_principal_entitlements, keyed the same as var.service_principal_entitlements"
  value       = { for k, v in azuredevops_service_principal_entitlement.service_principal_entitlements : k => v.display_name }
}
output "service_principal_entitlements_licensing_source" {
  description = "Map of licensing_source values across all service_principal_entitlements, keyed the same as var.service_principal_entitlements"
  value       = { for k, v in azuredevops_service_principal_entitlement.service_principal_entitlements : k => v.licensing_source }
}
output "service_principal_entitlements_origin" {
  description = "Map of origin values across all service_principal_entitlements, keyed the same as var.service_principal_entitlements"
  value       = { for k, v in azuredevops_service_principal_entitlement.service_principal_entitlements : k => v.origin }
}
output "service_principal_entitlements_origin_id" {
  description = "Map of origin_id values across all service_principal_entitlements, keyed the same as var.service_principal_entitlements"
  value       = { for k, v in azuredevops_service_principal_entitlement.service_principal_entitlements : k => v.origin_id }
}

