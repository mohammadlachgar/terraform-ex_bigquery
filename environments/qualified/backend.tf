

terraform {
  backend "gcs" {
    bucket = "project_id-tfstate"
    prefix = "env/qualified"
  }
}
