# linode

This describes infrastructure hosted on Linode.

# Requirements

* [Linode personal access token](https://cloud.linode.com/profile/tokens)
* [Terraform Cloud](https://cloud.hashicorp.com/products/terraform) account
* `terraform login` successfully run
* Filled out variables in `main.auto.tfvars`
* Local, activated installation of [Ansible](https://ansible.com)

# Usage

``` code
$ rm -rf .terraform
$ terraform init
$ bash -c 'terraform [command]'
```

# Files

* `[role].tf`: primary execution file for a role.
* `backends.tf`: host backends, typically for state file storage.
* `data_sources.tf`: all data sources.
* `main.auto.tfvars`: automatically filled-out ENV vars.
  * __NOTE:__ user-supplied, non-committed, optional in place of ENV vars.
* `main.auto.tfvars.example`: example file for `main.auto.tfvars`.
* `outputs.tf`: output of a Terraform run.
* `providers.tf`: description of all relevant providers.
* `variables.tf`: variables file.

