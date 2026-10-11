data "gitlab_group_protected_branches" "group_protected_branches_lookup" {
  for_each = var.group_protected_branches_lookup

  group = each.value.group
}

