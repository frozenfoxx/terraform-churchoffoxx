variable "backend_bucket" {
  default = "churchoffoxx"
  description = "Bucket to use for the statefile"  
}

variable "backend_region" {
  default = "us-east-1"
  description = "Location of the statefile"
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