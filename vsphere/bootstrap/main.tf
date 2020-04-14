module "bootstrap" {
  source = "github.com/frozenfoxx/terraform-bootstrap-vsphere"

  authkeys                      = var.authkeys
  cluster                       = var.cluster
  datacenter                    = var.datacenter
  dataroot                      = "/data"
  datastore                     = var.datastore
  dhcpstart                     = "192.168.250.10"
  dhcpstop                      = "192.168.250.10"
  folder                        = var.folder
  management_dns_servers        = var.management_dns_servers
  management_domain             = var.management_domain
  management_gateway            = var.management_gateway
  management_ipv4_address       = "192.168.2.12"
  management_ipv4_prefix_length = "24"
  management_netlabel           = var.management_netlabel
  name                          = "bootstrap"
  password                      = var.password
  template                      = var.template
  username                      = var.username
  vmtimez                       = var.vmtimez
}
