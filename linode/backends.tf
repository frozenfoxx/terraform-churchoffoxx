terraform {
  backend "s3" {
    bucket = "churchoffoxx"
    key    = "terraform/linode/default.tfstate"
    region = "us-east-1"
  }
}
