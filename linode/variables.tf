variable "image" {
  default     = "linode/ubuntu22.04"
  description = "Default system image to use"
}

variable "public_ssh_key" {
  default     = "~/.ssh/id_rsa.pub"
  description = "SSH Public Key Fingerprint"
}

variable "private_ssh_key" {
  default     = "~/.ssh/id_rsa"
  description = "SSH Private Key"
}

variable "region" {
  default     = "us-central"
  description = "Location to clone instances"
}

variable "root_pass" {
  default     = ""
  description = "Default user password"
  sensitive   = true
}

variable "sshkey_label" {
  default     = "terraform"
  description = "Label of the SSH key used for deployment"
}

variable "token" {
  default     = ""
  description = "Linode API token"
  sensitive   = true
}

variable "type" {
  default     = "g6-nanode-1"
  description = "Default instance type"
}
