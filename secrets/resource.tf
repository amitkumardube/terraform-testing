// we are trying to create a bigquery dataset and storage bucket and a secret

resource "google_secret_manager_secret" "secret_basic" {
  secret_id = "secret-test"

  labels = {
    label = "my-label"
  }

  replication {
    user_managed {
    replicas {
        location = "us-east1"
      }
    }
  }
}