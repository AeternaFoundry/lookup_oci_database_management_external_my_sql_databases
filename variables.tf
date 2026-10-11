variable "database_management_external_my_sql_databases_lookup" {
  description = <<EOT
Map of database_management_external_my_sql_databases_lookup, attributes below
Required:
    - compartment_id
Optional:
    - name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    name           = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

