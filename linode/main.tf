module "neko" {
  source = "git::git@github.com:frozenfoxx/terraform-neko-linode.git"

  authkeys                      = var.authkeys
  name                          = "neko"
  password                      = var.password
  username                      = var.username
}
