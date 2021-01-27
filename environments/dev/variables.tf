variable "project" {
  type = string
}

variable "region" {
  type = string
}

variable "zone" {
  type = string
}

variable "credentials" {
  type = string
}

variable "env" {
  type = string
}

variable "path_tables_json" {
  type    = string
}

# ========================================================================================
# GCP BIGQUERY GENERIC PROPERTIES
# ========================================================================================

variable "bq_location" {
  type    = string
}

variable "bq_creator" {
  type    = string
}

variable "env" {
  type    = string
}

variable "bq_description" {
  type    = string
}



# ========================================================================================
# GCP BIGQUERY DATASETS
# ========================================================================================


variable "bq_staging_dataset" {
  type    = string
}

variable "bq_datasets_delete_data_on_destroy" {
  type    = bool
}



# ========================================================================================
# GCP BIGQUERY TABLES
# ========================================================================================


variable "bq_table_label_env" {
  type    = string
}