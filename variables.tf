variable "image" {
  default     = "linode/ubuntu22.04"
  description = "Default system image to use"
}

variable "private_ssh_key" {
  default     = "~/.ssh/id_rsa"
  description = "SSH Private Key"
  sensitive   = true
}

variable "public_ssh_key" {
  default     = "~/.ssh/id_rsa.pub"
  description = "SSH Public Key Fingerprint"
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

variable "stream_key" {
  default     = ""
  description = "Stream key for Twitch"
  sensitive   = true
}

variable "target_host" {
  default     = ""
  description = "Target Zandronum server"
}

variable "token" {
  default     = ""
  description = "Linode API token"
  sensitive   = true
}

variable "traefik_acme_email" {
  default     = ""
  description = "Email used for Lets Encrypt SSL certificate generation"
}

variable "type" {
  default     = "g6-nanode-1"
  description = "Default instance type"
}

variable "wads_upload_dir" {
  default     = ""
  description = "Directory path containing all files to upload to /data/wads"
}

variable "zandronum_server_config" {
  default     = ""
  description = "Configuration file contents for Zandronum, base64 encoded"
}

variable "zandronum_options" {
  default     = ""
  description = "List of options for the game server"
}
