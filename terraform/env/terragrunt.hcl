generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
    heroku = {
      source = "heroku/heroku"
      version = "5.1.9"
    }
  }
}
provider "heroku" {}
provider "github" {}
EOF
}
