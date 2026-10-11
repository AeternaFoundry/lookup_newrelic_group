output "group_lookup_id" {
  description = "Map of id values across all group_lookup, keyed the same as var.group_lookup except keys with no id are omitted"
  value       = { for k, v in data.newrelic_group.group_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "group_lookup_authentication_domain_id" {
  description = "Map of authentication_domain_id values across all group_lookup, keyed the same as var.group_lookup except keys with no authentication_domain_id are omitted"
  value       = { for k, v in data.newrelic_group.group_lookup : k => v.authentication_domain_id if v.authentication_domain_id != null && length(v.authentication_domain_id) > 0 }
}
output "group_lookup_name" {
  description = "Map of name values across all group_lookup, keyed the same as var.group_lookup except keys with no name are omitted"
  value       = { for k, v in data.newrelic_group.group_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "group_lookup_user_ids" {
  description = "Map of user_ids values across all group_lookup, keyed the same as var.group_lookup except keys with no user_ids are omitted"
  value       = { for k, v in data.newrelic_group.group_lookup : k => v.user_ids if v.user_ids != null && length(v.user_ids) > 0 }
}

