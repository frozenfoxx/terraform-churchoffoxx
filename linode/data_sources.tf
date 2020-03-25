data "terraform_remote_state" "terraform_state" {
  backend = "local"

  config {
    path = "${path.module}../../terraform.tfstate"
  }
}
