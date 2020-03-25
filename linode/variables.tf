variable "region" {
  default = "us-central"
  description = "Location to clone instances"
}

variable "root_pass" {
  default = ""
  description = "Default user password"
}

variable "token" {
  default = ""
  description = "Linode API token"
}
