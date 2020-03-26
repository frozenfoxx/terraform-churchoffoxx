data "terraform_remote_state" "terraform_state" {
  backend = "local"

  config = {
    path = "${path.root}/.terraform/terraform.tfstate"
  }
}
