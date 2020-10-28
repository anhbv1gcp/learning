provider "google" {
  credentials = var.credentials_file_path
  version     = "~> 3.0"
  project = var.project_id
  region  = var.region
}

