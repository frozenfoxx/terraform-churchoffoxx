terraform {
  backend "s3" {
    bucket = "churchoffoxx"
    key    = "terraform/linode/terraform.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "s3" {
  backend = "s3"

  config {
    bucket = "churchoffoxx"
    key    = "terraform/linode/terraform.tfstate"
    region = "us-east-1"
  }
}
