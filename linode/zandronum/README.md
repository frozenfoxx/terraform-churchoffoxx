# linode-zandronum

This describes infrastructure hosted on Linode to deploy Zandronum.

# Requirements

* [Linode personal access token](https://cloud.linode.com/profile/tokens)
* A path to a directory containing all files to be uploaded to `/data/wads`.

# Usage

``` code
$ rm -rf .terraform && terraform init
  TF_VAR_private_ssh_key=${PATH_TO_PRIVATE_KEY} \
  TF_VAR_public_ssh_key=${PATH_TO_PUBLIC_KEY} \
  TF_VAR_token=${LINODE_TOKEN} \
  TF_VAR_wads_upload_dir=${PATH_TO_WADS} \
  TF_VAR_zandronum_server_config=${ZANDRONUM_SERVER_CONFIG} \
  TF_VAR_zandronum_options=${ZANDRONUM_OPTIONS} \
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
