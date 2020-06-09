resource "linode_sshkey" "terraform" {
  label   = var.sshkey_label
  ssh_key = chomp(file(var.public_ssh_key))
}

module "zandronum" {
  source = "github.com/frozenfoxx/terraform-zandronum-linode"

  authorized_keys = ["${linode_sshkey.terraform.ssh_key}"]
  config          = var.zandronum_server_config
  image           = var.image
  name            = "zandronum"
  options         = var.zandronum_options
  private_key     = chomp(file(var.private_ssh_key))
  region          = var.region
  root_pass       = var.root_pass
  type            = "g6-nanode-1"
  wads_upload_dir = var.wads_upload_dir
}
