// we are trying to create a bigquery dataset

data "google_service_account" "bqowner" {
  account_id = var.account_name
}

resource "google_bigquery_dataset" "dataset" {
  dataset_id                  = var.bucket_name
  friendly_name               = "test"
  description                 = "This is a test description"
  location                    = "EU"
  default_table_expiration_ms = 3600000

  labels = {
    env = "default"
  }

  access {
    role          = "OWNER"
    user_by_email = google_service_account.bqowner.email
  }

  access {
    role   = "READER"
    domain = "hashicorp.com"
  }
}

resource "google_service_account" "bqowner" {
  account_id = var.account_name
}