provider "google" {
  version = "~> 2.12"
  project = var.gcpproject
  region  = var.gcpregion
  /* Set credentials either here or with
     export GOOGLE_APPLICATION_CREDENTIALS="/home/user/.gcloud/Terraform.json"
     Note that usage of GCS backend for state will only work with environment variable */
  #credentials = "${file("${var.credentials_file_path}")}"
}

provider "linode" {
  token = var.token
}
