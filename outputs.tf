output "logpush_dataset_field_lookup_account_id" {
  description = "Map of account_id values across all logpush_dataset_field_lookup, keyed the same as var.logpush_dataset_field_lookup except keys with no account_id are omitted"
  value       = { for k, v in data.cloudflare_logpush_dataset_field.logpush_dataset_field_lookup : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "logpush_dataset_field_lookup_dataset_id" {
  description = "Map of dataset_id values across all logpush_dataset_field_lookup, keyed the same as var.logpush_dataset_field_lookup except keys with no dataset_id are omitted"
  value       = { for k, v in data.cloudflare_logpush_dataset_field.logpush_dataset_field_lookup : k => v.dataset_id if v.dataset_id != null && length(v.dataset_id) > 0 }
}
output "logpush_dataset_field_lookup_fields" {
  description = "Map of fields values across all logpush_dataset_field_lookup, keyed the same as var.logpush_dataset_field_lookup except keys with no fields are omitted"
  value       = { for k, v in data.cloudflare_logpush_dataset_field.logpush_dataset_field_lookup : k => v.fields if v.fields != null && length(v.fields) > 0 }
}
output "logpush_dataset_field_lookup_zone_id" {
  description = "Map of zone_id values across all logpush_dataset_field_lookup, keyed the same as var.logpush_dataset_field_lookup except keys with no zone_id are omitted"
  value       = { for k, v in data.cloudflare_logpush_dataset_field.logpush_dataset_field_lookup : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

