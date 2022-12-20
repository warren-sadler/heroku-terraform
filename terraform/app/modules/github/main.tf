data "github_release" "release" {
  repository = var.repo_name
  owner = var.owner
  retrieve_by = "latest"
}