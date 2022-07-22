# Store statefile in Terraform Cloud
terraform {
  cloud {
    organization = "churchoffoxx"

    workspaces {
      name = "terraform-churchoffoxx"
    }
  }
}

# Store statefile locally
# terraform {
#   backend "local" {}
# }
