terraform {
  required_version = ">= 0.13"
  required_providers {
    google = {
      source = "hashicorp/google"
    }
    linode = {
      source = "linode/linode"
    }
  }
}
