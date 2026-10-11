variable "iot_iot_domain_configure_data_accesses" {
  description = <<EOT
Map of iot_iot_domain_configure_data_accesses, attributes below
Required:
    - iot_domain_id
    - type
Optional:
    - db_allow_listed_identity_group_names
    - db_allowed_identity_domain_host
    - db_workspace_admin_initial_password
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    iot_domain_id                        = string
    type                                 = string
    db_allow_listed_identity_group_names = optional(list(string))
    db_allowed_identity_domain_host      = optional(string)
    db_workspace_admin_initial_password  = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.iot_iot_domain_configure_data_accesses : (
        contains([for v in ["APEX", "DIRECT", "ORDS"] : lower(v)], lower(v.type))
      )
    ])
    error_message = "must be one of: \"APEX\", \"DIRECT\", \"ORDS\""
  }
}

