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


variable "project" {
  description = "The ID of the project in which the resource belongs."
  type        = string
  default     = ""
}

variable "name" {
  description = "Name of the trigger. Must be unique within the project."
  type        = string
  default     = ""
}

variable "description" {
  description = "Human-readable description of the trigger."
  type        = string
  default     = ""
}

variable "repo_uri" {
  description = "The URI of the repo."
  type        = string
  default     = ""
}

variable "repo_ref" {
  description = "The branch or tag to use. Must start with refs/."
  type        = string
  default     = ""
}

variable "repo_type" {
  description = "The type of the repo, since it may not be explicit from the repo field (e.g from a URL)."
  type        = string
  default     = ""
}

variable "service_account" {
  description = "The service account used for all user-controlled operations including triggers.patch, triggers.run, builds.create, and builds.cancel."
  type        = string
  default     = ""
}

variable "filename" {
  description = "Path, from the source root, to a file whose contents is used for the template."
  type        = string
  default     = ""
}
