provider "vsphere" {
  version        = "~> 1.11"
  user           = var.viuser
  password       = var.vipassword
  vsphere_server = var.viserver

  # Allow if you have a self-signed certs in vCenter
  allow_unverified_ssl = true
}
