data "linode_profile" "me" {
}

data "linode_region" "main" {
  id = var.region
}

data "linode_instance_type" "default" {
  id = var.type
}

data "linode_image" "ubuntu" {
  id = var.image
}
