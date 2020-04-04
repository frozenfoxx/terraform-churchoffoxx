# linode-neko

This describes infrastructure hosted on Linode to deploy Neko.

# Requirements

* [Linode personal access token](https://cloud.linode.com/profile/tokens)

# Usage

``` code
$ rm -rf .terraform && terraform init
$ TF_VAR_neko_admin=${NEKO_ADMIN} \
  TF_VAR_neko_password=${NEKO_PASSWORD} \
  TF_VAR_private_ssh_key=${PATH_TO_PRIVATE_KEY} \
  TF_VAR_public_ssh_key=${PATH_TO_PUBLIC_KEY} \
  TF_VAR_token=${LINODE_TOKEN} \
  bash -c 'terraform [command]'
```

# Files

* `backends.tf`: host backends, typically for state file storage.
* `data_sources.tf`: all data sources.
* `main.tf`: primary execution file.
* `main.auto.tfvars`: persistent information for access post deployment.
  * __NOTE:__ user-supplied, non-committed, optional in place of ENV vars.
* `main.auto.tfvars.example`: example file for `main.auto.tfvars`.
* `providers.tf`: description of all relevant providers.
* `variables.tf`: variables file, single value no-lookups.
