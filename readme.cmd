https://app.terraform.io/app/org-vinid/workspaces/learning/runs

Run local:
 Create API token
   - tf3 login app.terraform.io

tf3 state list
plan target  : go to Environment Variables  add TF_CLI_ARGS_plan value -target=google_storage_bucket.vinid-bucket
