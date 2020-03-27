variable "authorized_keys" {
  default = [ "" ]
  description = "Authorized keys for persistent access"
}

variable "image" {
  default = "linode/ubuntu18.04"
  description = "Default system image to use"
}

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

variable "type" {
  default = "g6-nanode-1"
  description = "Default instance type"
}