variable "cloud_project_database_valkey_users" {
  description = <<EOT
Map of cloud_project_database_valkey_users, attributes below
Required:
    - cluster_id
    - name
    - service_name
Optional:
    - categories
    - channels
    - commands
    - keys
    - password_reset
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    cluster_id     = string
    name           = string
    service_name   = string
    categories     = optional(set(string))
    channels       = optional(set(string))
    commands       = optional(set(string))
    keys           = optional(set(string))
    password_reset = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

