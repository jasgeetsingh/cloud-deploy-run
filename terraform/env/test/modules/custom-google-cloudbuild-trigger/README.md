# Terraform CloudBuild Trigger Module

This module allows you to create and manage configuration for an automated build in response to source repository changes.

## Compatibility
This module is meant for use with Terraform 0.13+ and tested using Terraform 1.0+. If you find incompatibilities using Terraform >=0.13, please open an issue.
If you haven't [upgraded](https://www.terraform.io/upgrade-guides/0-13.html)

## Usage

Basic usage of this module is as follows:

```
module "cloud_build_triggers" {
  source          = "../modules/custom-google-cloudbuild-trigger"
  project         = var.project
  name            = var.name
  description     = var.description
  repo_uri        = var.repo_uri
  repo_ref        = var.repo_ref
  repo_type       = var.repo_type
  service_account = var.service_account
  filename        = var.filename
}
```

Then perform the following commands on the root folder:

- `terraform init` to get the plugins
- `terraform plan` to see the infrastructure plan
- `terraform apply` to apply the infrastructure build
- `terraform destroy` to destroy the built infrastructure

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| project | The ID of the project in which the resource belongs. | `string` | `""` | yes |
| name | Name of the trigger. Must be unique within the project. | `string` | `""` | no |
| description | Human-readable description of the trigger. | `string` | `""` | no |
| repo_uri | The URI of the repo. | `string` | `""` | yes |
| repo_ref | The branch or tag to use. Must start with refs/. | `string` | `""` | yes |
| repo_type | The type of the repo, since it may not be explicit from the repo field (e.g from a URL). | `string` | `""` | yes |
| service_account | The service account used for all user-controlled operations including triggers.patch, triggers.run, builds.create, and builds.cancel. | `string` | `""` | no |
| filename | Path, from the source root, to a file whose contents is used for the template. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| trigger_id | The ID of the created cloud build trigger. | 

## Permissions

In order to execute this module you must have a Service Account with the following permissions and roles:

- `roles/cloudbuild.builds.editor` on the project

## APIs

In order to operate this module, you must activate the following APIs on the project:

- Cloud Build API - `cloudbuild.googleapis.com`

## Terraform plugins

- [Terraform](https://www.terraform.io/downloads.html) >= 0.13
- [terraform-provider-google](https://github.com/terraform-providers/terraform-provider-google) plugin >= 4.47.0, < 5.0