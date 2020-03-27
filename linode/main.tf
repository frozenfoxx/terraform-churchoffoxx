module "neko" {
  source = "git::git@github.com:frozenfoxx/terraform-neko-linode.git"

  authorized_keys = var.authorized_keys
  image           = var.image
  name            = "neko"
  region          = var.region
  type            = "g6-standard-1"
  root_pass       = var.root_pass
}
