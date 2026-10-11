variable "group_lookup" {
  description = <<EOT
Map of group_lookup, attributes below
Required:
    - authentication_domain_id
    - name
EOT

  type = map(object({
    authentication_domain_id = string
    name                     = string
  }))
}

