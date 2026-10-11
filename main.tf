resource "ovh_cloud_project_database_valkey_user" "cloud_project_database_valkey_users" {
  for_each = var.cloud_project_database_valkey_users

  cluster_id     = each.value.cluster_id
  name           = each.value.name
  service_name   = each.value.service_name
  categories     = each.value.categories
  channels       = each.value.channels
  commands       = each.value.commands
  keys           = each.value.keys
  password_reset = each.value.password_reset

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

