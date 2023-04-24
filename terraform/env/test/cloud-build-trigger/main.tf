/**
 * Copyright 2023 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/******************************************
  Cloud build Trigger Details
 *****************************************/

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