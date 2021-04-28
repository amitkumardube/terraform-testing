// we are trying to create a bigquery dataset

// Calling the base rool module code to ensure that we are close the real infra 

module "bigquery_svc_account" {
  source = "../../../../"
  bigquery_dataset_name = var.bigquery_dataset_name
  account_name = var.account_name
}