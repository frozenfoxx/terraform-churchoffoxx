data "terraform_remote_state" "s3" {
  backend = "s3"

  config {
    bucket = "churchoffoxx"
    key    = "terraform/linode/terraform.tfstate"
    region = var.backend_region
  }
}
