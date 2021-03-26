output "project_id" {
  value = var.project_id
}

output "account_name" {
    value = module.bigquery_svc_account.sa_email
}