# vCenter variables
variable "viuser" {
  default = ""
  description = "vSphere administrative user"
}

variable "vipassword" {
  default = ""
  description = "vSphere administrative user password"
}

variable "viserver" {
  default = ""
  description = "vSphere server"
}

# VM variables
variable "authkeys" {
  default     = ""
  description = "Authorized keys content for the persistent admin user (base64 encoded)"
}

variable "cluster" {
  default     = "MGMT_Cluster"
  description = "vSphere Cluster to deploy on"
}

variable "datacenter" {
  default     = "COF"
  description = "Datacenter in vSphere to use"
}

variable "datastore" {
  default     = ""
  description = "Datastore to deploy VMDK"
}

variable "folder" {
  default     = "MGMT VMs"
  description = "Default VM folder"
}

variable "management_dns_servers" {
  default     = [
    "1.1.1.1",
    "8.8.8.8"
  ]
  description = "List of DNS servers to use"
}

variable "management_domain" {
  default     = "chuchoffoxx.net"
  description = "Domain to attach VM to"
}

variable "management_gateway" {
  default     = "192.168.2.1"
  description = "Default gateway on Management networks"
}

variable "management_netlabel" {
  default     = "MGMT"
  description = "Map to the management network"
}

variable "password" {
  default     = ""
  description = "Persistent administrative user password"
}

variable "public_ssh_key" {
  default     = "~/.ssh/id_rsa.pub"
  description = "SSH Public Key Fingerprint"
}

variable "private_ssh_key" {
  default     = "~/.ssh/id_rsa"
  description = "SSH Private Key"
}

variable "template" {
  default     = "packer-source-ubuntu1804"
  description = "VM Template to clone from"
}

variable "username" {
  default     = ""
  description = "Persistent administrative user"
}

variable "vmtimez" {
  default     = "Etc/UTC"
  description = "Time zone"
}
