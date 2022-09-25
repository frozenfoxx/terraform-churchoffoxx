resource "linode_sshkey" "terraform-crawl" {
  label   = var.sshkey_label
  ssh_key = chomp(file(var.public_ssh_key))
}

module "crawl" {
  source = "github.com/frozenfoxx/terraform-crawl-linode"

  authorized_keys          = ["${linode_sshkey.terraform-crawl.ssh_key}"]
  fqdn                     = "crawl.churchoffoxx.net"
  image                    = var.image
  name                     = "crawl"
  private_key              = chomp(file(var.private_ssh_key))
  region                   = var.region
  traefik_acme_email       = var.traefik_acme_email
  type                     = var.type
}
