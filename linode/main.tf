resource "linode_sshkey" "terraform" {
  label = var.sshkey_label
  ssh_key = chomp(file(var.public_ssh_key))
}

module "neko" {
  source = "git::git@github.com:frozenfoxx/terraform-neko-linode.git"

  authorized_keys = ["${linode_sshkey.terraform.ssh_key}"]
  image           = var.image
  name            = "neko"
  private_key     = chomp(file(var.private_ssh_key))
  region          = var.region
  root_pass       = var.root_pass
  type            = "g6-standard-1"
}
