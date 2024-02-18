# /*
#  * Copyright 2023 Google LLC. 
#  * 
#  * This software is provided as-is, without warranty or representation for any use or purpose. 
#  * Your use of it is subject to your agreement with Google.
#  */

cloud_build_triggers = {
  cloud_build_trigger_01 = {
    project         = "cloud-build-logs-jasgeet"
    name            = "demo-cloud-deploy-canary-pipeline"
    description     = "Trigger to create Container Registry along with Delivery Pipeline in Cloud Deploy"
    repo_uri        = "https://source.developers.google.com/p/springboot-java-cloud-deploy/r/terraform-config-code"
    repo_ref        = "refs/heads/main"
    repo_type       = "CLOUD_SOURCE_REPOSITORIES"
    service_account = "projects/cloud-build-logs-jasgeet/serviceAccounts/sa-jasgeet@springboot-java-cloud-deploy.iam.gserviceaccount.com"
    filename        = "cloud-deploy-canary-run-yamls/cloudbuild.yaml"
  },
}
