output "sa_email" {
    value = google_service_account.bqowner.email
}

output "bucket_name" {
    value = google_storage_bucket.uat_bucket.url
}

output "secret_name" {
    value = google_secret_manager_secret.secret_basic.name
}