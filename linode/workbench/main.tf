resource "linode_sshkey" "terraform-workbench" {
  label   = var.sshkey_label
  ssh_key = chomp(file(var.public_ssh_key))
}

module "workbench" {
  source = "github.com/frozenfoxx/terraform-workbench-linode"

  authorized_keys          = ["${linode_sshkey.terraform-workbench.ssh_key}"]
  fqdn                     = var.fqdn
  image                    = var.image
  name                     = "workbench"
  private_key              = chomp(file(var.private_ssh_key))
  region                   = var.region
  type                     = var.type
}
