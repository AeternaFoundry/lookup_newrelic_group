output "group_lookup_id" {
  description = "Map of id values across all group_lookup, keyed the same as var.group_lookup"
  value       = { for k, v in data.newrelic_group.group_lookup : k => v.id }
}
output "group_lookup_authentication_domain_id" {
  description = "Map of authentication_domain_id values across all group_lookup, keyed the same as var.group_lookup"
  value       = { for k, v in data.newrelic_group.group_lookup : k => v.authentication_domain_id }
}
output "group_lookup_name" {
  description = "Map of name values across all group_lookup, keyed the same as var.group_lookup"
  value       = { for k, v in data.newrelic_group.group_lookup : k => v.name }
}
output "group_lookup_user_ids" {
  description = "Map of user_ids values across all group_lookup, keyed the same as var.group_lookup"
  value       = { for k, v in data.newrelic_group.group_lookup : k => v.user_ids }
}

