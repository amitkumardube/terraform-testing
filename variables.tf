variable "bigquery_dataset_name" {
    type = string
    description = "name of the big query dataset"
}

variable "account_name" {
    type = string
    description = "service account name"
}

variable "secret_name" {
    type = string
    description = "Name of the secret to be created"
}