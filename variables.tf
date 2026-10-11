variable "group_protected_branches_lookup" {
  description = <<EOT
Map of group_protected_branches_lookup, attributes below
Required:
    - group
EOT

  type = map(object({
    group = string
  }))
}

