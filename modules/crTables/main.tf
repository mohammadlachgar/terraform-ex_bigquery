# ======================================================================
# GCP BIG QUERY DATASETS
# ======================================================================

resource "google_bigquery_dataset" "datasetR" {

  dataset_id                 = var.bq_staging_dataset
  description                = var.bq_description
  location                   = var.bq_location
  delete_contents_on_destroy = var.bq_datasets_delete_data_on_destroy

  labels = {
    env     = var.env
    creator = var.bq_creator
  }

  
}




# ======================================================================
# GCP BIG QUERY TABLES
# ======================================================================

resource "google_bigquery_table" "tables" {

  for_each    = fileset("${path.module}/gbo", "*")

  table_id    = replace(basename(each.value), ".json", "")
  dataset_id  = google_bigquery_dataset.datasetR.dataset_id
  schema      = file("${path.module}/gbo/${each.value}")

  labels = {
    env     = var.bq_table_label_env
  }
  
  depends_on = [
     google_bigquery_dataset.datasetR,
   ]

}