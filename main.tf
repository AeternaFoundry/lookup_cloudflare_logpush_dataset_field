data "cloudflare_logpush_dataset_field" "logpush_dataset_field_lookup" {
  for_each = var.logpush_dataset_field_lookup

  account_id = each.value.account_id
  dataset_id = each.value.dataset_id
  zone_id    = each.value.zone_id
}

