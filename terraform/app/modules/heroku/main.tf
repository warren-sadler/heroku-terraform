locals {
  typescript_build_pack = "https://github.com/zidizei/heroku-buildpack-tsc.git"
}

resource "heroku_app" "application" {
  name       = var.application_name
  buildpacks = [local.typescript_build_pack]
  region     = var.region
}

resource "heroku_addon" "database" {
  app_id = heroku_app.application.id
  plan   = "heroku-postgresql:premium0"
}

resource "heroku_addon_attachment" "database_connection" {
  addon_id = heroku_addon.database.id
  app_id   = heroku_app.application.id
}

resource "heroku_build" "application_build" {
  app_id = heroku_app.application.id
  source {
    url = var.application_tar_url
    version = var.application_version
  }
}
