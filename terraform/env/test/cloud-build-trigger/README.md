# Cloud Build Trigger Module

This module allows you to create and manage configuration for an automated build in response to source repository changes.

## Compatibility
This module is meant for use with Terraform 0.13+ and tested using Terraform 1.0+. If you find incompatibilities using Terraform >=0.13, please open an issue.
If you haven't [upgraded](https://www.terraform.io/upgrade-guides/0-13.html)

## Prerequisites

#### Service Account for Cloud Build trigger with following permissions:
  - Cloud Deploy Runner - `roles/clouddeploy.jobRunner`
  - Cloud Deploy Developer - `roles/clouddeploy.developer`
  - Cloud Deploy Operator - `roles/clouddeploy.operator`
  - Cloud Deploy Approver - `roles/clouddeploy.approver`
  - Cloud Build Service Account - `roles/cloudbuild.builds.builder`
  - Logs Writer - `roles/logging.logWriter`
  - Cloud Run Invoker - `roles/run.invoker`
  - Source Repository Reader - `roles/source.reader` 
  - Service Account User - `roles/iam.serviceAccountUser`
  - Compute Viewer - `roles/compute.viewer`
  - Storage Admin - `roles/storage.admin`

## Usage

Basic usage of this module is as follows:

```
module "cloud_build_triggers" {
  source          = "../modules/custom-google-cloudbuild-trigger"
  for_each        = var.cloud_build_triggers
  project         = each.value.project
  name            = each.value.name
  description     = each.value.description
  repo_uri        = each.value.repo_uri
  repo_ref        = each.value.repo_ref
  repo_type       = each.value.repo_type
  service_account = each.value.service_account
  filename        = each.value.filename
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
| cloud_build_triggers | Details of the cloud build triggers. | <pre>map(object({<br>    project         = string,<br>    name            = string,<br>    description     = string,<br>    repo_uri        = string,<br>    repo_ref        = string,<br>    repo_type       = string,<br>    service_account = string,<br>    filename        = string<br>}))</pre> | <pre>cloud_build_trigger = {<br>    description     = ""<br>    filename        = ""<br>    name            = ""<br>    project         = ""<br>    repo_ref        = ""<br>    repo_type       = ""<br>    repo_uri        = ""<br>    service_account = ""<br>}</pre> | yes |

## Outputs

| Name | Description |
|------|-------------|
| cloud_build_triggers | The ID of the created cloud build triggers. |

## Permissions

In order to execute this module you must have a Service Account with the following permissions and roles:

- `roles/cloudbuild.builds.editor` on the project
- `roles/iam.serviceAccountUser` on the project

## APIs

In order to operate this module, you must activate the following APIs on the project:

- Cloud Build API - `cloudbuild.googleapis.com`

## Terraform plugins

- [Terraform](https://www.terraform.io/downloads.html) >= 0.13
- [terraform-provider-google](https://github.com/terraform-providers/terraform-provider-google) plugin >= 4.47.0, < 5.0
