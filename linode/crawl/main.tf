resource "linode_sshkey" "terraform" {
  label   = var.sshkey_label
  ssh_key = chomp(file(var.public_ssh_key))
}

module "crawl" {
  source = "github.com/frozenfoxx/terraform-crawl-linode"

  authorized_keys     = ["${linode_sshkey.terraform.ssh_key}"]
  image               = var.image
  name                = "crawl"
  private_key         = chomp(file(var.private_ssh_key))
  region              = var.region
  root_pass           = var.root_pass
  type                = "g6-nano-1"
}
