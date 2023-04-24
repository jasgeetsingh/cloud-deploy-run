# /*
#  * Copyright 2023 Google LLC. 
#  * 
#  * This software is provided as-is, without warranty or representation for any use or purpose. 
#  * Your use of it is subject to your agreement with Google.
#  */

cloud_build_triggers = {
  cloud_build_trigger_01 = {
    project         = "<PROJECT_ID>"
    name            = "demo-cloud-deploy-canary-pipeline"
    description     = "Trigger to create Container Registry along with Delivery Pipeline in Cloud Deploy"
    repo_uri        = "https://source.developers.google.com/p/<PROJECT_ID>/r/<repo-name>"
    repo_ref        = "refs/heads/main"
    repo_type       = "CLOUD_SOURCE_REPOSITORIES"
    service_account = "projects/<PROJECT_ID>/serviceAccounts/<sa-name>@<PROJECT_ID>.iam.gserviceaccount.com"
    filename        = "cloud-deploy-canary-run-yamls/cloudbuild.yaml"
  },
}
