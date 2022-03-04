resource "linode_sshkey" "terraform-twitchandtear" {
  label   = var.sshkey_label
  ssh_key = chomp(file(var.public_ssh_key))
}

module "twitchandtear" {
  source = "github.com/frozenfoxx/terraform-twitchandtear-linode"

  authorized_keys          = ["${linode_sshkey.terraform-twitchandtear.ssh_key}"]
  fqdn                     = var.fqdn
  image                    = var.image
  name                     = "twitchandtear"
  private_key              = chomp(file(var.private_ssh_key))
  region                   = var.region
  stream_key               = var.stream_key
  target_host              = var.target_host
  type                     = var.type
  wads_upload_dir          = var.wads_upload_dir
}
