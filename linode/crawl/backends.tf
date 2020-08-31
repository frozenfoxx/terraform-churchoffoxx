# Store state file in GCS
terraform {
  backend "gcs" {
    bucket = "churchoffoxx-net-terraform"
    prefix = "linode/crawl"
  }
}

# Store statefile locally
# terraform {
#   backend "local" {}
# }
