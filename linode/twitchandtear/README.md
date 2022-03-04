# linode-twitchandtear

This describes infrastructure hosted on Linode to deploy twitchandtear.

# Requirements

* [Linode personal access token](https://cloud.linode.com/profile/tokens)
* GCP GCS bucket for state file storage.

# Usage

``` code
$ rm -rf .terraform && GOOGLE_APPLICATION_CREDENTIALS=${PATH_TO_JSON} terraform init
$ GOOGLE_APPLICATION_CREDENTIALS=${PATH_TO_JSON} \
  TF_VAR_private_ssh_key=${PATH_TO_PRIVATE_KEY} \
  TF_VAR_public_ssh_key=${PATH_TO_PUBLIC_KEY} \
  TF_VAR_token=${LINODE_TOKEN} \
  TF_VAR_stream_key=${TWITCH_STREAM_KEY} \
  TF_VAR_target_host=${TARGET_ZANDRONUM_HOST} \
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
