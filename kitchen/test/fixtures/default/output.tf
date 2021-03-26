output "project_id" {
  value = var.project_id
}

output "account_name" {
    value = data.google_service_account.bqowner.email
}