variable "service_principal_entitlements" {
  description = <<EOT
Map of service_principal_entitlements, attributes below
Required:
    - origin_id
Optional:
    - account_license_type
    - licensing_source
    - origin
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    origin_id            = string
    account_license_type = optional(string)
    licensing_source     = optional(string)
    origin               = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.service_principal_entitlements : (
        length(trimspace(v.origin_id)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.service_principal_entitlements : (
        v.origin == null || (length(trimspace(v.origin)) > 0)
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

