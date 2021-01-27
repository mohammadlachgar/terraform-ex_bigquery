locals {
  env = "qualified"
}

module "crTables" {
  source  = "../../modules/crTables/"
  project = var.project
  env     = local.env
  bq_staging_dataset = "${local.env}_${var.bq_staging_dataset}"
  bq_description = var.bq_description
  bq_location = var.bq_location
  bq_datasets_delete_data_on_destroy = var.bq_datasets_delete_data_on_destroy
  bq_creator = var.bq_creator
  bq_table_label_env     = var.bq_table_label_env
}
