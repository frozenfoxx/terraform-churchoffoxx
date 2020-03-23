# linode

This describes infrastructure hosted on Linode.

# Requirements

* [Linode personal access token](https://cloud.linode.com/profile/tokens)

# Usage

``` code
LINODE_TOKEN=${LINODE_TOKEN} bash -c 'terraform [command]'
```

# Files

* `backends.tf`: host backends, typically for state file storage.
* `main.tf`: primary execution file.
* `main.auto.tfvars`: persistent user for access post deployment.
  * __NOTE:__ user-supplied, non-committed.
* `main.auto.tfvars.example`: example file for `main.auto.tfvars`.
* `providers.tf`: description of all relevant providers.
* `variables.tf`: variables file, single value no-lookups.
