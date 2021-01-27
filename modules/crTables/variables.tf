variable "project" {
  type = string
}

variable "env" {
  type    = string
  default = "test"
}



# ========================================================================================
# GCP BIGQUERY GENERIC PROPERTIES
# ========================================================================================


variable "bq_location" {
  type    = string
  default = "EU"
}

variable "bq_creator" {
  type    = string
  default = "github-ahmed"
}


variable "bq_description" {
  type    = string
  default = "dataset description"
}



# ========================================================================================
# GCP BIGQUERY DATASETS
# ========================================================================================


variable "bq_staging_dataset" {
  type    = string
  default = "myDataset"
}

variable "bq_datasets_delete_data_on_destroy" {
  type    = bool
  default = true
}



# ========================================================================================
# GCP BIGQUERY TABLES
# ========================================================================================


variable "bq_table_label_env" {
  type    = string
  default   = "test"
}