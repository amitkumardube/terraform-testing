// we are trying to create a bigquery dataset and storage bucket and a secret

data "google_service_account" "bqowner" {
  account_id = var.account_name
}

resource "google_bigquery_dataset" "dataset" {
  dataset_id                  = var.bigquery_dataset_name
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

resource "google_storage_bucket" "uat_bucket" {
  name          = "amit_test_bucket_uat"
  location      = "EU"
  force_destroy = true

  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
  cors {
    origin          = ["http://image-store.com"]
    method          = ["GET", "HEAD", "PUT", "POST", "DELETE"]
    response_header = ["*"]
    max_age_seconds = 3600
  }
}

resource "google_service_account" "bqowner" {
  account_id = var.account_name
}