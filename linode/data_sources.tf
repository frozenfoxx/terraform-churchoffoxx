data "linode_profile" "me" {
}

data "linode_region" "main" {
  id = var.region
}

data "linode_instance_type" "default" {
  id = "g6-nanode-1"
}

data "linode_image" "ubuntu" {
  id = "linode/ubuntu18.04"
}

data "terraform_remote_state" "terraform_state" {
  backend = "local"

  config = {
    path = "${path.root}/.terraform/terraform.tfstate"
  }
}
