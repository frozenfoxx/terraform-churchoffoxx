module "neko" {
  source = "git::git@github.com:frozenfoxx/terraform-neko-linode.git"

  authorized_keys = var.authorized_keys
  image           = "g6-standard-1"
  name            = "neko"
  region          = var.region
  root_pass       = var.root_pass
}
