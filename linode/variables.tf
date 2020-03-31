variable "image" {
  default     = "linode/ubuntu18.04"
  description = "Default system image to use"
}

variable "public_ssh_key" {
  description = "SSH Public Key Fingerprint"
  default     = "~/.ssh/id_rsa.pub"
}

variable "private_ssh_key" {
  description = "SSH Private Key"
  default     = "~/.ssh/id_rsa"
}

variable "region" {
  default     = "us-central"
  description = "Location to clone instances"
}

variable "root_pass" {
  default     = ""
  description = "Default user password"
}

variable "sshkey_label" {
  default     = "terraform"
  description = "Label of the SSH key used for deployment"
}

variable "token" {
  default     = ""
  description = "Linode API token"
}

variable "type" {
  default     = "g6-nanode-1"
  description = "Default instance type"
}