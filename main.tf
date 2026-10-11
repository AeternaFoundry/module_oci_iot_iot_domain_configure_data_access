resource "oci_iot_iot_domain_configure_data_access" "iot_iot_domain_configure_data_accesses" {
  for_each = var.iot_iot_domain_configure_data_accesses

  iot_domain_id                        = each.value.iot_domain_id
  type                                 = each.value.type
  db_allow_listed_identity_group_names = each.value.db_allow_listed_identity_group_names
  db_allowed_identity_domain_host      = each.value.db_allowed_identity_domain_host
  db_workspace_admin_initial_password  = each.value.db_workspace_admin_initial_password

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

