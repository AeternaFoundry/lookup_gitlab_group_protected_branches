output "group_protected_branches_lookup_id" {
  description = "Map of id values across all group_protected_branches_lookup, keyed the same as var.group_protected_branches_lookup except keys with no id are omitted"
  value       = { for k, v in data.gitlab_group_protected_branches.group_protected_branches_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "group_protected_branches_lookup_group" {
  description = "Map of group values across all group_protected_branches_lookup, keyed the same as var.group_protected_branches_lookup except keys with no group are omitted"
  value       = { for k, v in data.gitlab_group_protected_branches.group_protected_branches_lookup : k => v.group if v.group != null && length(v.group) > 0 }
}
output "group_protected_branches_lookup_protected_branches" {
  description = "Map of protected_branches values across all group_protected_branches_lookup, keyed the same as var.group_protected_branches_lookup except keys with no protected_branches are omitted"
  value       = { for k, v in data.gitlab_group_protected_branches.group_protected_branches_lookup : k => v.protected_branches if v.protected_branches != null && length(v.protected_branches) > 0 }
}

