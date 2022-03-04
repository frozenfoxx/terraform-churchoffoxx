variable "image" {
  default     = "linode/ubuntu20.04"
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
}

variable "sshkey_label" {
  default     = "terraform"
  description = "Label of the SSH key used for deployment"
}

variable "stream_key" {
  default     = ""
  description = "Stream key for Twitch"
}

variable "target_host" {
  default     = ""
  description = "Target Zandronum server"
}

variable "token" {
  default     = ""
  description = "Linode API token"
}

variable "type" {
  default     = "g6-nanode-2"
  description = "Default instance type"
}

variable "wads_upload_dir" {
  default     = ""
  description = "Directory path containing all files to upload to /data/wads"
}