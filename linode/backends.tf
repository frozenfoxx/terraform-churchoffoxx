terraform {
  backend "s3" {
    bucket = "churchoffoxx"
    key    = "terraform/linode/terraform.tfstate"
    region = "us-east-1"
  }
}
