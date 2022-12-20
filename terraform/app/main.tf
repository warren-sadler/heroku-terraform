module "repo" {
  source    = "./modules/github"
  repo_name = "therify"
}

module "application" {
  source              = "./modules/heroku"
  application_name    = var.application_name
  region              = var.region
  application_tar_url = module.repo.tar_url
  application_version = module.repo.tagged_version
}
