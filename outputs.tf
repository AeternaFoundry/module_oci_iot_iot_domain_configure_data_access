output "iot_iot_domain_configure_data_accesses_id" {
  description = "Map of id values across all iot_iot_domain_configure_data_accesses, keyed the same as var.iot_iot_domain_configure_data_accesses except keys with no id are omitted"
  value       = { for k, v in oci_iot_iot_domain_configure_data_access.iot_iot_domain_configure_data_accesses : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iot_iot_domain_configure_data_accesses_db_allow_listed_identity_group_names" {
  description = "Map of db_allow_listed_identity_group_names values across all iot_iot_domain_configure_data_accesses, keyed the same as var.iot_iot_domain_configure_data_accesses except keys with no db_allow_listed_identity_group_names are omitted"
  value       = { for k, v in oci_iot_iot_domain_configure_data_access.iot_iot_domain_configure_data_accesses : k => v.db_allow_listed_identity_group_names if v.db_allow_listed_identity_group_names != null && length(v.db_allow_listed_identity_group_names) > 0 }
}
output "iot_iot_domain_configure_data_accesses_db_allowed_identity_domain_host" {
  description = "Map of db_allowed_identity_domain_host values across all iot_iot_domain_configure_data_accesses, keyed the same as var.iot_iot_domain_configure_data_accesses except keys with no db_allowed_identity_domain_host are omitted"
  value       = { for k, v in oci_iot_iot_domain_configure_data_access.iot_iot_domain_configure_data_accesses : k => v.db_allowed_identity_domain_host if v.db_allowed_identity_domain_host != null && length(v.db_allowed_identity_domain_host) > 0 }
}
output "iot_iot_domain_configure_data_accesses_db_workspace_admin_initial_password" {
  description = "Map of db_workspace_admin_initial_password values across all iot_iot_domain_configure_data_accesses, keyed the same as var.iot_iot_domain_configure_data_accesses except keys with no db_workspace_admin_initial_password are omitted"
  value       = { for k, v in oci_iot_iot_domain_configure_data_access.iot_iot_domain_configure_data_accesses : k => v.db_workspace_admin_initial_password if v.db_workspace_admin_initial_password != null && length(v.db_workspace_admin_initial_password) > 0 }
  sensitive   = true
}
output "iot_iot_domain_configure_data_accesses_iot_domain_id" {
  description = "Map of iot_domain_id values across all iot_iot_domain_configure_data_accesses, keyed the same as var.iot_iot_domain_configure_data_accesses except keys with no iot_domain_id are omitted"
  value       = { for k, v in oci_iot_iot_domain_configure_data_access.iot_iot_domain_configure_data_accesses : k => v.iot_domain_id if v.iot_domain_id != null && length(v.iot_domain_id) > 0 }
}
output "iot_iot_domain_configure_data_accesses_type" {
  description = "Map of type values across all iot_iot_domain_configure_data_accesses, keyed the same as var.iot_iot_domain_configure_data_accesses except keys with no type are omitted"
  value       = { for k, v in oci_iot_iot_domain_configure_data_access.iot_iot_domain_configure_data_accesses : k => v.type if v.type != null && length(v.type) > 0 }
}

