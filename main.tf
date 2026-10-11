data "newrelic_group" "group_lookup" {
  for_each = var.group_lookup

  authentication_domain_id = each.value.authentication_domain_id
  name                     = each.value.name
}

