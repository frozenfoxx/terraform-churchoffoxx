resource "linode_sshkey" "terraform" {
  label   = var.sshkey_label
  ssh_key = chomp(file(var.public_ssh_key))
}

module "crawl" {
  source = "github.com/frozenfoxx/terraform-crawl-linode"

  authorized_keys          = ["${linode_sshkey.terraform.ssh_key}"]
  domain                   = var.domain
  image                    = var.image
  name                     = "crawl"
  private_key              = chomp(file(var.private_ssh_key))
  region                   = var.region
  traefik_acme_email       = var.traefik_acme_email
  traefik_admin_htpassword = var.traefik_admin_htpassword
  traefik_admin_username   = var.traefik_admin_username
  type                     = var.type
}
