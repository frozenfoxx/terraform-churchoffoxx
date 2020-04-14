# bootstrap

This describes a vSphere boostrap server.

# Requirements

* `AUTHKEYS`, a `base64`-encoded authorized keys file for the persistent user.

# Usage

```
$ rm -rf .terraform & terraform init
$ TF_VAR_authkeys=${AUTHKEYS} \
  TF_VAR_password=${PASSWORD} \
  TF_VAR_private_ssh_key=${PATH_TO_PRIVATE_KEY} \
  TF_VAR_username=${USERNAME} \
  TF_VAR_vipassword=${VIPASSWORD} \
  TF_VAR_viuser=${VIUSER} \
  bash -c 'terraform [command]'
```

# Files

* `backends.tf`: host backends, typically for state file storage.
* `main.tf`: primary execution file.
* `providers.tf`: description of all relevant providers.
* `variables.tf`: variables file, single value no-lookups.
